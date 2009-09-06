//
// WOHextrapolateController.m
// Hextrapolate
//
// Created by Wincent Colaiuta on Sat Dec 20 2003.
// Copyright 2003-2008 Wincent Colaiuta

// class header
#import "WOHextrapolateController.h"

// system headers
#import <objc/objc-runtime.h>

// framework headers
#import "WODebug/WODebug.h"

// other class headers
#import "WODynamicBaseTransformer.h"
#import "WODynamicBaseFormatter.h"
#import "WODynamicTextEncodingTransformer.h"
#import "WODynamicTextEncodingFormatter.h"

// other project headers
#import "WOHextrapolate.h"
#import "WOHextrapolateLocalizations.h"
#import "PreferencePanes/General/GeneralPref.h"

// WOCommon class headers
#import "WOCommon/WOLicense.h"
#import "WOCommon/WOLogManager.h"
#import "WOCommon/WOPreferencesWindowController.h"
#import "WOCommon/WORegistrationController.h"

// WOCommon category headers
#import "WOCommon/NSApplication+WOConvenience.h"
#import "WOCommon/NSApplication+WOLicensing.h"
#import "WOCommon/NSDictionary+WOCreation.h"
#import "WOCommon/NSString+WOURLUtilities.h"

// WOCommon other headers
#import "WOCommon/WOConvenienceMacros.h"

// transformer names
#define WO_HEX_TRANSFORMER                                  @"WOHexTransformer"
#define WO_DECIMAL_TRANSFORMER                              @"WODecimalTransformer"
#define WO_OCTAL_TRANSFORMER                                @"WOOctalTransformer"
#define WO_BINARY_TRANSFORMER                               @"WOBinaryTransformer"
#define WO_ASCII_TRANSFORMER                                @"WOASCIITransformer"
#define WO_SELECTABLE_TEXT_ENCODING_TRANSFORMER             @"WOSelectableTextEncodingTransformer"
#define WO_ALTERNATE_SELECTABLE_TEXT_ENCODING_TRANSFORMER   @"WOAlternateSelectableTextEncodingTransformer"
#define WO_SELECTABLE_BASE_TRANSFORMER                      @"WOSelectableBaseTransformer"
#define WO_ALTERNATE_SELECTABLE_BASE_TRANSFORMER            @"WOAlternateSelectableBaseTransformer"

#pragma mark -
#pragma mark Class variables

static WODynamicTextEncodingTransformer *selectableTextEncodingTransformer          = nil;
static WODynamicTextEncodingTransformer *alternateSelectableTextEncodingTransformer = nil;
static WODynamicBaseTransformer         *selectableBaseTransformer                  = nil;
static WODynamicBaseTransformer         *alternateSelectableBaseTransformer         = nil;

@interface WOHextrapolateController (WOPrivate)

- (void)registerForKeyValueObserving;
- (void)unregisterForKeyValueObserving;

@end

@implementation WOHextrapolateController

#pragma mark -
#pragma mark NSObject overrides

// allocate (and leak) transformers which will last for the life of the program
+ (void)initialize
{
    // static transformers
    [NSValueTransformer setValueTransformer:[[WOGeneralBaseTransformer alloc] initWithBase:16] forName:WO_HEX_TRANSFORMER];
    [NSValueTransformer setValueTransformer:[[WOGeneralBaseTransformer alloc] initWithBase:10] forName:WO_DECIMAL_TRANSFORMER];
    [NSValueTransformer setValueTransformer:[[WOGeneralBaseTransformer alloc] initWithBase:8] forName:WO_OCTAL_TRANSFORMER];
    [NSValueTransformer setValueTransformer:[[WOGeneralBaseTransformer alloc] initWithBase:2] forName:WO_BINARY_TRANSFORMER];
    
    // "dynamic" transformers: keep references to these dynamic so that we know which is which
    selectableTextEncodingTransformer = [[WODynamicTextEncodingTransformer alloc] init];
    [NSValueTransformer setValueTransformer:selectableTextEncodingTransformer forName:WO_SELECTABLE_TEXT_ENCODING_TRANSFORMER];
    alternateSelectableTextEncodingTransformer = [[WODynamicTextEncodingTransformer alloc] init];
    [NSValueTransformer setValueTransformer:alternateSelectableTextEncodingTransformer 
                                    forName:WO_ALTERNATE_SELECTABLE_TEXT_ENCODING_TRANSFORMER];
    selectableBaseTransformer = [[WODynamicBaseTransformer alloc] init];
    [NSValueTransformer setValueTransformer:selectableBaseTransformer forName:WO_SELECTABLE_BASE_TRANSFORMER];
    alternateSelectableBaseTransformer = [[WODynamicBaseTransformer alloc] init] ;
    [NSValueTransformer setValueTransformer:alternateSelectableBaseTransformer forName:WO_ALTERNATE_SELECTABLE_BASE_TRANSFORMER];
    
    // changing pop-ups should force a redisplay of the model value and window title bar
    NSArray *keys = WO_ARRAY(@"showAs", @"textEncoding", @"alternateTextEncoding", @"selectableBase", @"alternateSelectableBase");
    [self setKeys:keys triggerChangeNotificationsForDependentKey:@"representedValue"];    
    [self setKeys:WO_ARRAY(@"representedValue") triggerChangeNotificationsForDependentKey:@"digitCount"];
    
    // set up defaults for preferences
    NSDictionary    *defaults   = WO_DICTIONARY(WO_YES,    WO_HEXTRAPOLATE_TEXTURE_PREF,
                                                WO_YES,    WO_HEXTRAPOLATE_CLOSE_PREF,
                                                WO_NO,     WO_HEXTRAPOLATE_FLOAT_PREF);
    [[NSUserDefaults standardUserDefaults] registerDefaults:defaults];
    [[NSUserDefaultsController sharedUserDefaultsController]  setInitialValues:defaults];
}

#pragma mark -
#pragma mark NSNibAwaking protocol

- (void)awakeFromNib
{
    // set up dynamic formatters, keeping a non-retained reference so we can do pointer comparisons later
    selectableTextEncodingFormatter             = [[[WODynamicTextEncodingFormatter alloc] init] autorelease];
    alternateSelectableTextEncodingFormatter    = [[[WODynamicTextEncodingFormatter alloc] init] autorelease];
    selectableBaseFormatter                     = [[[WODynamicBaseFormatter alloc] init] autorelease];
    alternateSelectableBaseFormatter            = [[[WODynamicBaseFormatter alloc] init] autorelease];
    [selectableBaseTextField setFormatter:selectableBaseFormatter];
    [alternateSelectableBaseTextField setFormatter:alternateSelectableBaseFormatter];
    [selectableTextEncodingTextField setFormatter:selectableTextEncodingFormatter];
    [alternateSelectableTextEncodingTextField setFormatter:alternateSelectableTextEncodingFormatter];
    
    // keep UI in sync with preferences
    [self registerForKeyValueObserving];
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [mainWindow setLevel:[defaults boolForKey:WO_HEXTRAPOLATE_FLOAT_PREF] ? NSModalPanelWindowLevel : NSNormalWindowLevel];
    [self setTextured:[defaults boolForKey:WO_HEXTRAPOLATE_TEXTURE_PREF]];
}

#pragma mark -
#pragma mark NSApplication delegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
#if 0
    // check for license and activation certificate on disk, display registration reminder if appropriate
    WOLicense       *license            = [WOLicense licenseReadingFromDisk:WOProductHextrapolate];
    NSDictionary    *activation         = [license activationCertificateReadingFromDisk];
    BOOL            isActivated         = NO;
    BOOL            isDenied            = NO;
    NSString        *denialReason       = [activation objectForKey:WO_DENIAL_REASON];
    NSString        *denialURL          = [activation objectForKey:WO_DENIAL_URL];
    NSString        *activationGranted  = [activation objectForKey:WO_ACTIVATION_GRANTED_KEY];
    NSString        *activationString   = [activation objectForKey:WO_ACTIVATION_STRING];
    
    if (activationGranted && [activationGranted isEqual:WO_ACTIVATION_GRANTED] &&
        activationString && [activationString isKindOfClass:[NSString class]] &&
        license && [license validateActivationString:activationString])
        isActivated = YES;          // TODO: perform deeper checks here (or better still, elsewhere)
    else if (activationGranted && [activationGranted isEqual:WO_ACTIVATION_DENIED])
        isDenied = YES;
    
    WORegistrationController *controller = [WORegistrationController sharedInstance];
    [controller setPurchaseURL:WO_HEXTRAPOLATE_PURCHASE_URL];
    NSString *price = WO_STRING(_WO_HEXTRAPOLATE_PRICE, [[NSUserDefaults standardUserDefaults] stringForKey:NSDecimalSeparator]);
    [controller setPriceString:price];
    
    if (!license)
        [controller showPurchaseAlert];   // TODO: set up timer
    else if (isDenied)
    {
        // these values should never be nil, but just in case
        if (!denialReason || ![denialReason isKindOfClass:[NSString class]])
            denialReason = @"";
        
        if (!denialURL || ![denialURL isKindOfClass:[NSString class]])
            denialURL = WO_BASE_DEFAULT_ACTIVATION_DENIAL_URL;
        
        [controller showActivationDeniedAlertReason:denialReason URL:denialURL];
        [NSApp terminate:self]; // bail here in case attacker removes method
    }
    else unless (isActivated)
        [controller showActivationRequiredAlert];
#endif
    // check that last exit was clean
    WOCrashCatcher *crashCatcher = [WOCrashCatcher sharedCatcher];
    [crashCatcher setHandlesSignals:NO];            // override preferences on disk
    [crashCatcher setHandlesUncaughtExceptions:NO]; // override preferences on disk
    if ([crashCatcher lastExitWasUnclean] && [crashCatcher sendsCrashReports]) 
        [crashCatcher reportUncleanExit];    
}

- (void)applicationWillTerminate:(NSNotification *)aNotification
{
    [self unregisterForKeyValueObserving];
    [[WOCrashCatcher sharedCatcher] recordCleanExit];
    
    // return desired exit code: http://lists.apple.com/archives/cocoa-dev/2004/Nov/msg01386.html
    if (_exitCode != EXIT_SUCCESS)
        exit(_exitCode);
}

#pragma mark -
#pragma mark Key-Value Observing

- (void)registerForKeyValueObserving
{
    NSUserDefaultsController *controller = [NSUserDefaultsController sharedUserDefaultsController];
    [controller addObserver:self 
                 forKeyPath:WO_PREF_PATH(WO_HEXTRAPOLATE_FLOAT_PREF) 
                    options:NSKeyValueObservingOptionNew
                    context:NULL];
    [controller addObserver:self 
                 forKeyPath:WO_PREF_PATH(WO_HEXTRAPOLATE_TEXTURE_PREF) 
                    options:NSKeyValueObservingOptionNew
                    context:NULL];
}

- (void)unregisterForKeyValueObserving
{
    [self removeObserver:self forKeyPath:WO_PREF_PATH(WO_HEXTRAPOLATE_FLOAT_PREF)];
    [self removeObserver:self forKeyPath:WO_PREF_PATH(WO_HEXTRAPOLATE_TEXTURE_PREF)];
}

- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary *)change context:(void *)context
{
    // Panther/Tiger bug: change dictionary always contains nil for new value, so get it manually
    id newValue = [object valueForKeyPath:keyPath];
    if ([WO_PREF_PATH(WO_HEXTRAPOLATE_FLOAT_PREF) isEqualToString:keyPath])
        [mainWindow setLevel:(newValue && [newValue boolValue]) ? NSModalPanelWindowLevel : NSNormalWindowLevel];
    else if ([WO_PREF_PATH(WO_HEXTRAPOLATE_TEXTURE_PREF) isEqualToString:keyPath])
        [self setTextured:(newValue && [newValue boolValue])];
}

#pragma mark -
#pragma mark IBAction methods

- (IBAction)showPreferences:(id)sender
{
    WOPreferencesWindowController *controller = [WOPreferencesWindowController sharedController];
    [controller showAll];
    [[controller window] makeKeyAndOrderFront:self];
    [[NSApplication sharedApplication] activate];
}

- (IBAction)showHelp:(id)sender
{
    NSString *localizedBookName = [[NSBundle mainBundle] objectForInfoDictionaryKey:@"CFBundleHelpBookName"];
    if (localizedBookName)
        [[NSHelpManager sharedHelpManager] openHelpAnchor:@"front_page" inBook:localizedBookName];
    else if (![WO_HEXTRAPOLATE_HELP_URL openAsURL]) // fallback plan
        [WOLog err:@"failure opening URL %@", WO_HEXTRAPOLATE_HELP_URL];
}

- (IBAction)buyNow:(id)sender
{
    if (![WO_HEXTRAPOLATE_PURCHASE_URL openAsURL])
        [WOLog err:@"failure opening URL %@", WO_HEXTRAPOLATE_PURCHASE_URL];
}

- (IBAction)enterRegistration:(id)sender
{
    [[WORegistrationController sharedInstance] showRegistrationPreferencePane:self];
}

- (IBAction)submitFeedback:(id)sender
{
    if (![WO_HEXTRAPOLATE_FEEDBACK_URL openAsURL])
        [WOLog err:@"failure opening URL %@", WO_HEXTRAPOLATE_PURCHASE_URL];
}

#pragma mark -
#pragma mark Cocoa Bindings (observed keys)

- (NSString *)digitCount
{
    if (!representedValue) return nil;
    unsigned bitCount   = [representedValue bitCount];
    unsigned byteCount  = [representedValue byteCount];
    return WO_STRING(_WO_TITLE_FORMAT, 
                     byteCount, byteCount == 1 ? _WO_BYTE : _WO_BYTES,
                     bitCount,  bitCount == 1 ? _WO_BIT : _WO_BITS);
}

- (void)setTextured:(BOOL)textured
{
    if ([mainWindow respondsToSelector:@selector(_setTexturedBackground:)])
        objc_msgSend(mainWindow, @selector(_setTexturedBackground:), textured); // http://cocoadev.com/index.pl?TexturedWindows
    else if ([mainWindow respondsToSelector:@selector(setTexturedBackground:)])
        objc_msgSend(mainWindow, @selector(setTexturedBackground:), textured);  // in case Apple decides to expose the API...
    else
        [WOLog err:@"unable to toggle brushed metal texture"];
    
    [mainWindow invalidateShadow];
}

#pragma mark NSControl delegate methods

- (void)control:(NSControl *)control didFailToValidatePartialString:(NSString *)string errorDescription:(NSString *)error
{
    NSBeep();
    if (error) [control setToolTip:error];
}

- (void)controlTextDidEndEditing:(NSNotification *)aNotification
{
    // the notification object should be the textfield that ended editing
    [[[aNotification object] ifResponds] setToolTip:nil];
}

#pragma mark NSWindow delegate methods

- (void)windowWillClose:(NSNotification *)aNotification
{
    if ([[NSUserDefaults standardUserDefaults] boolForKey:WO_HEXTRAPOLATE_CLOSE_PREF])
        [NSApp terminate:self];
}

#pragma mark -
#pragma mark Delegate methods (transformer callbacks)

- (unsigned)baseForTransformer:(WODynamicBaseTransformer *)aTransformer
{
    NSParameterAssert(aTransformer != nil);
    unsigned base = WO_DEFAULT_BASE;
    if (aTransformer == selectableBaseTransformer)
        base = selectableBase + 2;          // offset of 2 (index 0 corresponds to base 2)
    else if (aTransformer == alternateSelectableBaseTransformer)
        base = alternateSelectableBase + 2; // offset of 2 (index 0 corresponds to base 2)
    else
        [NSException raise:NSInternalInconsistencyException format:@"unrecognized transformer %@", aTransformer];
    return base;
}

- (unsigned)baseForFormatter:(WODynamicBaseFormatter *)aFormatter;
{
    NSParameterAssert(aFormatter != nil);
    unsigned base = WO_DEFAULT_BASE;
    if (aFormatter == selectableBaseFormatter)
        base = selectableBase + 2;          // offset of 2 (index 0 corresponds to base 2)
    else if (aFormatter == alternateSelectableBaseFormatter)
        base = alternateSelectableBase + 2; // offset of 2 (index 0 corresponds to base 2)
    else
        [NSException raise:NSInternalInconsistencyException format:@"unrecognized formatter %@", aFormatter];
    return base;
}

- (CFStringEncoding)encodingForIndex:(unsigned)index
{
    switch (index) // index in pop-up menu
    {
        case 0: return kCFStringEncodingASCII;
        case 1: return kCFStringEncodingUTF8;
        case 2: return kCFStringEncodingUTF16BE;
        case 3: return kCFStringEncodingUTF16LE;
        default: [NSException raise:NSInternalInconsistencyException format:@"unknown encoding selection %d", index];
    }
    return 0; // silence GCC warning
}

- (CFStringEncoding)encodingForTransformer:(WODynamicTextEncodingTransformer *)aTransformer
{
    unsigned popUpIndex = 0;
    if (aTransformer == selectableTextEncodingTransformer)
        popUpIndex = textEncoding;
    else if (aTransformer == alternateSelectableTextEncodingTransformer)
        popUpIndex = alternateTextEncoding;
    else
        [NSException raise:NSInternalInconsistencyException format:@"unrecognized transformer %@", aTransformer];
    return [self encodingForIndex:popUpIndex];
}

- (CFStringEncoding)encodingForFormatter:(WODynamicTextEncodingFormatter *)aFormatter
{
    unsigned popUpIndex = 0;
    if (aFormatter == selectableTextEncodingFormatter)
        popUpIndex = textEncoding;
    else if (aFormatter == alternateSelectableTextEncodingFormatter)
        popUpIndex = alternateTextEncoding;
    else
        [NSException raise:NSInternalInconsistencyException format:@"unrecognized formatter %@", aFormatter];
    return [self encodingForIndex:popUpIndex];
}
    
#pragma mark -
#pragma mark WOBaseCore callbacks

//! This is not an official NSApplication delegate method; WOBaseCore will send this to the delegate to find out what app is
//! running.
- (WOProduct)productCodeCallback
{
    return WOProductHextrapolate;
}

#pragma mark -
#pragma mark Accessors

- (void)setExitCode:(int)anExitCode
{
    _exitCode = anExitCode;
}

@end

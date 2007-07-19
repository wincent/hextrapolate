//
// WOHextrapolateController.h
// Hextrapolate
//
// Created by Wincent Colaiuta on Sat Dec 20 2003.
// Copyright 2003-2007 Wincent Colaiuta.
// $Id: WOHextrapolateController.h 89 2007-04-25 10:37:08Z wincent $

#import <Cocoa/Cocoa.h>

@class WODynamicBaseFormatter, WODynamicBaseTransformer, WODynamicTextEncodingFormatter, WODynamicTextEncodingTransformer;
@class WOMPZWrapper;

@interface WOHextrapolateController : NSObject {

#pragma mark IBOutlets
    
    // main window
    IBOutlet NSWindow                   *mainWindow;
     
    // need these outlets in order to programmatically attach formatters
    IBOutlet NSTextField                *selectableTextEncodingTextField;
    IBOutlet NSTextField                *alternateSelectableTextEncodingTextField;
    IBOutlet NSTextField                *selectableBaseTextField;
    IBOutlet NSTextField                *alternateSelectableBaseTextField;
    
#pragma mark Cocoa Bindings
    
    WOMPZWrapper    *representedValue;              // model
    
    unsigned        showAs;                         // pop-up
    unsigned        textEncoding;                   // pop-up
    unsigned        alternateTextEncoding;          // pop-up
    unsigned        selectableBase;                 // pop-up
    unsigned        alternateSelectableBase;        // pop-up
        
    NSString        *digitCount;                    // for window title bar "4 bytes, 32 bits" etc
    
#pragma mark Other instance variables
 
    WODynamicTextEncodingFormatter  *selectableTextEncodingFormatter;           //!< non-retained reference
    WODynamicTextEncodingFormatter  *alternateSelectableTextEncodingFormatter;  //!< non-retained reference    
    WODynamicBaseFormatter          *selectableBaseFormatter;                   //!< non-retained reference
    WODynamicBaseFormatter          *alternateSelectableBaseFormatter;          //!< non-retained reference
    
    
    /*! This is principally here for unit testing support. If any unit test fails, the unit test controller will call the setExitCode: method on the application delegate (this class) and override the default value. Defaults to 0 (EXIT_SUCCESS). */
    int                             _exitCode; 
}

- (IBAction)showPreferences:(id)sender;
- (IBAction)buyNow:(id)sender;
- (IBAction)enterRegistration:(id)sender;
- (IBAction)submitFeedback:(id)sender;
- (IBAction)showHelp:(id)sender;

- (void)setTextured:(BOOL)textured;

#pragma mark -
#pragma mark Cocoa Bindings (observed keys)

- (NSString *)digitCount;

#pragma mark -
#pragma mark Delegate methods (transformer and formatter callbacks)

- (unsigned)baseForTransformer:(WODynamicBaseTransformer *)aTransformer;
- (unsigned)baseForFormatter:(WODynamicBaseFormatter *)aFormatter;
- (CFStringEncoding)encodingForTransformer:(WODynamicTextEncodingTransformer *)aTransformer;
- (CFStringEncoding)encodingForFormatter:(WODynamicTextEncodingFormatter *)aFormatter;

#pragma mark -
#pragma mark Accessors

- (void)setExitCode:(int)anExitCode;

@end

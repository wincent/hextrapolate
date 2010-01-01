// WOGeneralBaseFormatter.m
// Hextrapolate
//
// Copyright 2003-2009 Wincent Colaiuta. All rights reserved.

// class header
#import "WOGeneralBaseFormatter.h"

// for mpz
#import "gmp/gmp.h"

// other project headers
#import "WOHextrapolate.h"
#import "WOHextrapolateLocalizations.h"

// WOPublic class headers
#import "WOPublic/WOLogManager.h"

// WOPublic macro headers
#import "WOPublic/WOConvenienceMacros.h"

@implementation WOGeneralBaseFormatter

#pragma mark -
#pragma mark NSObject overrides

- (id)init
{
    if ((self = [super init]))
    {
        self->_base                 = WO_DEFAULT_BASE;
        self->_allowsSignedValues   = NO;
    }
    return self;
}

#pragma mark NSFormatter overrides

// primitive method (must override)
- (NSString *)stringForObjectValue:(id)anObject
{
    // transformation is handled via Cocoa Bindings (NSValueTransformer subclasses)
    return anObject;
}

// primitive method (must override)
- (BOOL)getObjectValue:(id *)anObject forString:(NSString *)string errorDescription:(NSString **)error 
{
    // transformation is handled via Cocoa Bindings (NSValueTransformer subclasses)
    if (anObject) *anObject = [NSString stringWithString:string];
    return YES;
}

// optional
- (BOOL)isPartialStringValid:(NSString *)partialString newEditingString:(NSString **)newString errorDescription:(NSString **)error 
{
    // scan for illegal characters
    NSScanner *scanner = [[NSScanner alloc] initWithString:partialString];
    
    // docs say that NSScanner is not case sensitive by default, but this is not true when using NSCharacterSet
    NSString *allCharacters = @"0123456789aAbBcCdDeEfFgGhHiIjJkKlLmMnNoOpPqQrRsStTuUvVwWxXyYzZ";
    
    // adjust for bases greater than 10 to compensate for odd string format
    unsigned index = _base;
    if (index > 10)
        index += (index - 10);
    
    BOOL            success          = NO;  // if we return NO most recently typed character (illegal) is removed
    NSCharacterSet  *legalCharacters = [NSCharacterSet characterSetWithCharactersInString:[allCharacters substringToIndex:index]];
    NSString        *validPortion;
    if ([scanner scanCharactersFromSet:legalCharacters intoString:&validPortion]) 
    {
        // characters were scanned
        if ([validPortion length] == [partialString length])
        {
            // success: ensure that string is lowercased 
            if (newString)
                *newString = [partialString lowercaseString];
            success =  YES;
        }
    }
    else    // no characters were scanned -- usually means it was illegal
    {
        if ([partialString length] == 0)
            success = YES;
    }   
    [scanner release];
    
    if (!success && error)
        *error = WO_STRING(_WO_DIGITS_MUST_BE_BETWEEN_0_AND_C, [allCharacters characterAtIndex:index - 1]);
    return success;
}

- (NSAttributedString *)attributedStringForObjectValue:(id)anObject withDefaultAttributes:(NSDictionary *)attributes
{
    if (_grouping == 0) return nil;
    NSString *raw = [self stringForObjectValue:anObject];
    if (!raw) return nil;
    NSMutableAttributedString *string = [[[NSMutableAttributedString alloc] initWithString:raw] autorelease];
    
    BOOL odd = YES;
    for (unsigned i = [raw length]; i > 0;)
    {
        unsigned location       = (i > _grouping) ? i - _grouping : 0;
        unsigned segmentLength  = (i > _grouping) ? _grouping : i;
        i = location;
        
        odd = !odd;
        if (!odd) continue;
        
        [string addAttribute:NSForegroundColorAttributeName 
                       value:[NSColor disabledControlTextColor] 
                       range:NSMakeRange(location, segmentLength)];
    }
    
    return string;
}

#pragma mark -
#pragma mark Accessors

- (BOOL)allowsSignedValues
{
    return _allowsSignedValues;
}

- (void)setAllowsSignedValues:(BOOL)allows
{
    _allowsSignedValues = allows;
}

@end
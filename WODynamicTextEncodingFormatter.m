//
// WODynamicTextEncodingFormatter.m
// Hextrapolate
//
// Created by Wincent Colaiuta on 7 April 2007.
// Copyright 2007 Wincent Colaiuta.
// $Id: WODynamicTextEncodingFormatter.m 51 2007-04-07 12:56:14Z wincent $

// class header
#import "WODynamicTextEncodingFormatter.h"

// other class headers
#import "WOHextrapolateController.h"
#import "WOTextEncodingTransformer.h"

// other project headers
#import "WOHextrapolate.h"
#import "WOHextrapolateLocalizations.h"

// WOCommon macro headers
#import "WOCommon/WOConvenienceMacros.h"
#import "WOCommon/WODebugMacros.h"

@interface WODynamicTextEncodingFormatter (WOPrivate)

//! Helper method maintains cache of transformers.
- (NSValueTransformer *)transformerForEncoding:(CFStringEncoding)anEncoding;

@end

@implementation WODynamicTextEncodingFormatter

#pragma mark -
#pragma mark NSObject overrides

- (id)init
{
    if ((self = [super init]))
        self->_transformers = [[NSMutableDictionary alloc] initWithCapacity:4];
    return self;
}

- (void)dealloc
{
    WO_RELEASE(_transformers);
    [super dealloc];
}


#pragma mark -
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
    WOHextrapolateController *delegate = [NSApp delegate];
    WOAssert(delegate != nil);
    CFStringEncoding encoding = [delegate encodingForFormatter:self];
    if (![[self transformerForEncoding:encoding] reverseTransformedValue:partialString])
    {
        if (error)
            *error = WO_STRING(_WO_INVALID_INPUT_FOR_ENCODING, (NSString *)CFStringGetNameOfEncoding(encoding));
        return NO;
    }
    return YES;
}

#pragma mark -
#pragma mark Custom methods

- (NSValueTransformer *)transformerForEncoding:(CFStringEncoding)anEncoding
{
    NSNumber            *key            = WO_UNSIGNED(anEncoding);
    NSValueTransformer  *transformer    = [_transformers objectForKey:key];
    if (transformer) return transformer;
    transformer = [[[WOTextEncodingTransformer alloc] initWithEncoding:anEncoding] autorelease];
    [_transformers setObject:transformer forKey:key];
    return transformer;
}

@end

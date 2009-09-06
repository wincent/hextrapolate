//
// WODynamicTextEncodingTransformer.m
// Hextrapolate
//
// Created by Wincent Colaiuta on 7 April 2007.
// Copyright 2007-2008 Wincent Colaiuta.

// class header
#import "WODynamicTextEncodingTransformer.h"

// other project headers
#import "WOHextrapolateController.h"

// WOPublic macro headers
#import "WOPublic/WODebugMacros.h"

@implementation WODynamicTextEncodingTransformer

#pragma mark -
#pragma mark Custom methods

- (void)updateEncoding
{
    WOHextrapolateController *delegate = [NSApp delegate];
    WOAssert(delegate != nil);
    _encoding = [delegate encodingForTransformer:self];
}

#pragma mark -
#pragma mark NSValueTransformer overrides

- (id)reverseTransformedValue:(id)value
{
    if (!value) return nil;
    [self updateEncoding];
    return [super reverseTransformedValue:value];
}

- (id)transformedValue:(id)value
{
    if (!value) return nil;
    [self updateEncoding];
    return [super transformedValue:value];
}

@end

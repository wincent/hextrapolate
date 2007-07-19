//
// WODynamicTextEncodingTransformer.m
// Hextrapolate
//
// Created by Wincent Colaiuta on 7 April 2007.
// Copyright 2007 Wincent Colaiuta.
// $Id: WODynamicTextEncodingTransformer.m 51 2007-04-07 12:56:14Z wincent $

// class header
#import "WODynamicTextEncodingTransformer.h"

// other project headers
#import "WOHextrapolateController.h"

// WOCommon macro headers
#import "WOCommon/WODebugMacros.h"

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

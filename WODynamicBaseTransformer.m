//
// WODynamicBaseTransformer.m
// Hextrapolate
//
// Created by Wincent Colaiuta on 7 April 2007.
// Copyright 2007-2008 Wincent Colaiuta.

// class header
#import "WODynamicBaseTransformer.h"

// other class headers
#import "WOHextrapolateController.h"

// WOPublic other headers
#import "WOPublic/WODebugMacros.h"

@implementation WODynamicBaseTransformer

#pragma mark -
#pragma mark Custom methods

- (void)updateBase
{
    WOHextrapolateController *delegate = [NSApp delegate];
    WOAssert(delegate != nil);
    _base = [delegate baseForTransformer:self];
}

#pragma mark -
#pragma mark NSValueTransformer overrides

- (id)reverseTransformedValue:(id)value
{
    if (!value) return nil;
    [self updateBase];
    return [super reverseTransformedValue:value];
}

- (id)transformedValue:(id)value
{
    if (!value) return nil;
    [self updateBase];
    return [super transformedValue:value];
}

@end
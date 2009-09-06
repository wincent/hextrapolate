//
// WODynamicBaseFormatter.m
// Hextrapolate
//
// Created by Wincent Colaiuta on 7 April 2007.
// Copyright 2007-2008 Wincent Colaiuta.

// class header
#import "WODynamicBaseFormatter.h"

// other class headers
#import "WOHextrapolateController.h"

// WOPublic macro headers
#import "WOPublic/WODebugMacros.h"

@implementation WODynamicBaseFormatter

#pragma mark -
#pragma mark NSFormatter overrides

- (BOOL)isPartialStringValid:(NSString *)partialString newEditingString:(NSString **)newString errorDescription:(NSString **)error 
{
    // update base before calling super
    WOHextrapolateController *delegate = [NSApp delegate];
    WOAssert(delegate != nil);
    _base = [delegate baseForFormatter:self];
    
    return [super isPartialStringValid:partialString newEditingString:newString errorDescription:error];
}

@end

//
// WODynamicBaseFormatter.m
// Hextrapolate
//
// Created by Wincent Colaiuta on 7 April 2007.
// Copyright 2007 Wincent Colaiuta.
// $Id: WODynamicBaseFormatter.m 48 2007-04-07 04:36:04Z wincent $

// class header
#import "WODynamicBaseFormatter.h"

// other class headers
#import "WOHextrapolateController.h"

// WOCommon macro headers
#import "WOCommon/WODebugMacros.h"

@implementation WODynamicBaseFormatter

#pragma mark -
#pragma mark NSFormatter overrides

// optional
- (BOOL)isPartialStringValid:(NSString *)partialString newEditingString:(NSString **)newString errorDescription:(NSString **)error 
{
    // update base before calling super
    WOHextrapolateController *delegate = [NSApp delegate];
    WOAssert(delegate != nil);
    _base = [delegate baseForFormatter:self];
    
    return [super isPartialStringValid:partialString newEditingString:newString errorDescription:error];
}

@end

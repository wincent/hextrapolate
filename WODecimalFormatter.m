//
// WODecimalFormatter.m
// Hextrapolate
//
// Created by Wincent Colaiuta on Sat Dec 20 2003.
// Copyright 2003-2007 Wincent Colaiuta
// $Id: WODecimalFormatter.m 46 2007-04-07 01:52:10Z wincent $

// class header
#import "WODecimalFormatter.h"

@implementation WODecimalFormatter

#pragma mark -
#pragma mark NSObject overrides

- (id)init
{
    if ((self = [super init]))
        self->_base = 10;
    return self;
}

@end

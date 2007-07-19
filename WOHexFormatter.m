//
// WOHexFormatter.m
// Hextrapolate
//
// Created by Wincent Colaiuta on Sat Dec 20 2003.
// Copyright 2003-2007 Wincent Colaiuta.
// $Id: WOHexFormatter.m 53 2007-04-07 13:43:06Z wincent $

// class header
#import "WOHexFormatter.h"

@implementation WOHexFormatter

#pragma mark -
#pragma mark NSObject overrides

- (id)init
{
    if ((self = [super init]))
    {
        self->_base     = 16;
        self->_grouping = 4;
    }
    return self;
}

@end
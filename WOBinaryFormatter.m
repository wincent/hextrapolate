//
// WOBinaryFormatter.m
// Hextrapolate
//
// Created by Wincent Colaiuta on Sat Dec 20 2003.
// Copyright 2003-2007 Wincent Colaiuta
// $Id: WOBinaryFormatter.m 53 2007-04-07 13:43:06Z wincent $

// class header
#import "WOBinaryFormatter.h"

@implementation WOBinaryFormatter

#pragma mark -
#pragma mark NSObject overrides

- (id)init
{
    if ((self = [super init]))
    {
        self->_base     = 2;
        self->_grouping = 8;
    }
    return self;
}

@end

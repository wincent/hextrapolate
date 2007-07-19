//
// WOGeneralBaseTransformer.h
// Hextrapolate
//
// Created by Wincent Colaiuta on 7 April 2007.
// Copyright 2007 Wincent Colaiuta.
// $Id: WOGeneralBaseTransformer.h 47 2007-04-07 02:34:47Z wincent $

#import <Cocoa/Cocoa.h>

@interface WOGeneralBaseTransformer : NSValueTransformer {

    unsigned _base;
    
}

//! Designated initializer.
- (id)initWithBase:(unsigned)aBase;

@end

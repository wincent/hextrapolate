//
// WOGeneralBaseFormatter.h
// Hextrapolate
//
// Created by Wincent Colaiuta on Sat Dec 20 2003.
// Copyright 2003-2007 Wincent Colaiuta
// $Id: WOGeneralBaseFormatter.h 53 2007-04-07 13:43:06Z wincent $

#import <Foundation/Foundation.h>
#import "WOMPZWrapper.h"

@interface WOGeneralBaseFormatter : NSFormatter {

    unsigned            _base;
    BOOL                _allowsSignedValues;
    
    //! The number of digits per group, for color coding purposes.
    unsigned            _grouping;
}

#pragma mark Accessors

// currently not implemented, because signed values only make sense for fixed bit widths
- (BOOL)allowsSignedValues;
- (void)setAllowsSignedValues:(BOOL)allows;

@end

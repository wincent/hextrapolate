//
// WODynamicTextEncodingFormatter.h
// Hextrapolate
//
// Created by Wincent Colaiuta on 7 April 2007.
// Copyright 2007 Wincent Colaiuta.
// $Id: WODynamicTextEncodingFormatter.h 51 2007-04-07 12:56:14Z wincent $

#import <Cocoa/Cocoa.h>

@interface WODynamicTextEncodingFormatter : NSFormatter {

    //! Maintain a cache of transformers (one per encoding) so as not to have to create a new one on each keypress.
    NSMutableDictionary *_transformers;
    
}

@end

//
// WOTextEncodingTransformer.h
// Hextrapolate
//
// Created by Wincent Colaiuta on 7 April 2007.
// Copyright 2007 Wincent Colaiuta.
// $Id: WOTextEncodingTransformer.h 50 2007-04-07 11:35:18Z wincent $

#import <Cocoa/Cocoa.h>

@interface WOTextEncodingTransformer :  NSValueTransformer {

    CFStringEncoding _encoding;
    
}

//! Designated initializer.
- (id)initWithEncoding:(CFStringEncoding)anEncoding;

@end

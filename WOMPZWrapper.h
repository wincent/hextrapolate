//
// WOMPZWrapper.h
// Hextrapolate
//
// Created by Wincent Colaiuta on Thu Jan 01 2004.
// Copyright 2004-2007 Wincent Colaiuta
// $Id: WOMPZWrapper.h 54 2007-04-07 14:05:09Z wincent $

/*!

@header     WOMPZWrapper

@abstract   Simple wrapper class for C mpz_t type

@discussion Wrapper class that enables the C mpz_t type to be conveniently
added to Foundation collection classes such as NSDictionary, or passed between
methods which expect arguments of type id.

On initialization, a new WOMPZWrapper object contains a mpz_t with value "0".

*/

/*
 
In order to successfully compile gmp support must add the follow to the include
search path (under Build Settings):
    "$(SRCROOT)/gmp"
And the following under "Other linker flags":
    "$(SRCROOT)/gmp/.libs/libgmp.a"

 Also, GMP and GCC 4.0 don't like each other (fails to compile on Intel, compiles on PPC but produces a runtime crash). GCC_VERSION=3.3 seems to fix it, and using the WOBase and WODebug frameworks (built as universal binaries with GCC 4.0) doesn't *appear* to be a problem...
 
This produces working Deployment builds, but Development (Zerolink) builds fail.
I note in the build window that the flags are not being passed to the linker. In
order to get this to work I've had to turn Zerolink off and also add the above
to "Other linker flags" in the Development Build Style settings (setting it in 
the general project build settings is not enough).                                                            

 To configure for no-assembly (generic) library: ./configure --build=none (doesn't "make" on ppc64)
 
*/

#import <Foundation/Foundation.h>

#import "gmp/gmp.h"

@interface WOMPZWrapper : NSObject {

    mpz_t   _MPZValue;
    
}

+ (WOMPZWrapper *)wrapperWithString:(NSString *)aString inBase:(unsigned)base;

+ (WOMPZWrapper *)wrapperWithData:(NSData *)aData;

- (id)initWithString:(NSString *)aString inBase:(unsigned)base;

- (id)initWithData:(NSData *)aData;

//! Value must be an initialized mpz_t
- (void)setMPZValue:(mpz_t)value;

//! Value must be an initialized mpz_t
- (void)getMPZValue:(mpz_t)value;

- (NSString *)stringForBase:(unsigned)base;

- (NSData *)data;

- (unsigned)bitCount;

- (unsigned)byteCount;

@end

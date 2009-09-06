//
// WOTextEncodingTransformer.m
// Hextrapolate
//
// Created by Wincent Colaiuta on 7 April 2007.
// Copyright 2007-2008 Wincent Colaiuta.

// class header
#import "WOTextEncodingTransformer.h"

// other class headers
#import "WOMPZWrapper.h"

// WOPublic macro headers
#import "WOPublic/WODebugMacros.h"

@implementation WOTextEncodingTransformer

#pragma mark -
#pragma mark Custom methods

- (id)initWithEncoding:(CFStringEncoding)anEncoding
{
    if ((self = [super init]))
        self->_encoding = anEncoding;
    return self;
}

#pragma mark -
#pragma mark NSValueTransformer overrides

+ (BOOL)allowsReverseTransformation
{
    return YES;
}

+ (Class)transformedValueClass
{
    return [NSString class];
}

- (id)reverseTransformedValue:(id)value
{
    if (!value) return nil;
    NSData      *data           = nil;
    CFStringRef str             = (CFStringRef)value;
    CFIndex     length          = CFStringGetLength(str);;
    CFIndex     convertedLength = 0;
    CFRange     range           = CFRangeMake(0, length);
    if (!(CFStringGetBytes(str, range, _encoding, 0, false, NULL, 0, &convertedLength) < length))
    {
        // non-lossy conversion is possible
        UInt8 *buffer = malloc(convertedLength);
        WOAssert(buffer != NULL);
        CFStringGetBytes(str, range, _encoding, 0, false, buffer, convertedLength, NULL);
        data = [NSData dataWithBytesNoCopy:buffer length:convertedLength freeWhenDone:YES];
    }
    if (!data) return nil;
    return [WOMPZWrapper wrapperWithData:data];
}

- (id)transformedValue:(id)value
{
    if (!value) return nil;
    NSParameterAssert([value respondsToSelector:@selector(data)]);
    NSData *data = [value data];
    if (!data) return nil;

    // Both Foundation and Core Foundation allow their "ASCII" representations to include Unicode.
    // This is commented at the kCFStringEncodingASCII definition where it says:
    // "0..127 (in creating CFString, values greater than 0x7F are treated as corresponding Unicode value)"
    NSString *string = nil;
    CFStringRef str = CFStringCreateWithBytes(kCFAllocatorDefault, [data bytes], [data length], _encoding, false);
    if (str)
    {
        CFIndex length          = CFStringGetLength(str);
        CFIndex convertedLength = 0;

        // make sure non-lossy conversion is possible
        if (!(CFStringGetBytes(str, CFRangeMake(0, length), _encoding, 0, false, NULL, 0, &convertedLength) < length))
            string = [NSString stringWithString:(NSString *)str];
        CFRelease(str);
    }
    return string;
}

@end

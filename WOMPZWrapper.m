//
// WOMPZWrapper.m
// Hextrapolate
//
// Created by Wincent Colaiuta on Thu Jan 01 2004.
// Copyright 2004-2008 Wincent Colaiuta

// class header
#import "WOMPZWrapper.h"

// other project headers
#import "WOHextrapolate.h"

// WOPublic headers
#import "WOPublic/WODebugMacros.h"

@implementation WOMPZWrapper

+ (WOMPZWrapper *)wrapperWithString:(NSString *)aString inBase:(unsigned)base
{
    return [[self alloc] initWithString:aString inBase:base];
}

+ (WOMPZWrapper *)wrapperWithData:(NSData *)aData
{
    return [[self alloc] initWithData:aData];
}

- (id)initWithString:(NSString *)aString inBase:(unsigned)base
{
    NSParameterAssert(aString != nil);
    NSParameterAssert((base >= WO_MIN_BASE) && (base <= WO_MAX_BASE));
    if ((self = [super init]))
    {
        int result = mpz_set_str(_MPZValue, [aString UTF8String], (int)base);
        if (result == -1)
            [NSException raise:WO_GMP_CONVERSION_EXCEPTION 
                        format:@"mpz_init_set_str failed with string \"%@\" and base %d", aString, base];
    }
    return self;
}

- (id)initWithData:(NSData *)aData
{
    NSParameterAssert(aData != nil);
    if ((self = [super init]))
        mpz_import(_MPZValue, [aData length], 1, 1, 1, 0, [aData bytes]); // 1 = big endian, need an alternate method for little endian
    return self;
}

- (id)init
{
    if ((self = [super init]))
        mpz_init(_MPZValue);
    return self;
}

- (void)finalize
{
    mpz_clear(_MPZValue);
    [super finalize];
}

// called by Cocoa calls in -takeObjectValueFrom:
- (id)copyWithZone:(NSZone *)zone
{
    NSAssert(false, @"this should never be called!");
    WOMPZWrapper *copy = [[WOMPZWrapper allocWithZone:zone] init];
    [copy setMPZValue:_MPZValue];
    return copy;    // caller's responsibility to send balancing -release message
}

- (void)setMPZValue:(mpz_t)value
{
    mpz_set(_MPZValue, value);
}

- (void)getMPZValue:(mpz_t)value
{
    mpz_set(value, _MPZValue);
}

- (NSString *)stringForBase:(unsigned)base
{
    NSParameterAssert((base >= WO_MIN_BASE) && (base <= WO_MAX_BASE));
    char *string = malloc(mpz_sizeinbase(_MPZValue, (int)base) + 2);    // allocate space plus 2 bytes (sign and null termination)
    WOAssert(string != NULL);
    mpz_get_str(string, (int)base, _MPZValue);
    NSString *returnString = [NSString stringWithUTF8String:string];
    free(string);
    return returnString;
}

- (NSData *)data
{
    size_t countp;
    void *buffer = mpz_export(NULL, &countp, 1, 1, 1, 0, _MPZValue); // again this is big-endian, need a separate little-endian version
    return [NSData dataWithBytesNoCopy:buffer length:countp freeWhenDone:YES];
}

- (unsigned)bitCount
{
    return mpz_sizeinbase(_MPZValue, 2);
}

- (unsigned)byteCount
{
    size_t hexDigits = mpz_sizeinbase(_MPZValue, 16);
    return (hexDigits / 2) + ((hexDigits % 2) ? 1 : 0);
}

@end

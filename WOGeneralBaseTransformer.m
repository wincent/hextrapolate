//
// WOGeneralBaseTransformer.m
// Hextrapolate
//
// Created by Wincent Colaiuta on 7 April 2007.
// Copyright 2007 Wincent Colaiuta.
// $Id: WOGeneralBaseTransformer.m 47 2007-04-07 02:34:47Z wincent $

// class header
#import "WOGeneralBaseTransformer.h"

// other class headers
#import "WOMPZWrapper.h"

// other project headers
#import "WOHextrapolate.h"

@implementation WOGeneralBaseTransformer

#pragma mark -
#pragma mark Custom methods

- (id)initWithBase:(unsigned)aBase
{
    NSParameterAssert(aBase >= WO_MIN_BASE);
    NSParameterAssert(aBase <= WO_MAX_BASE);
    if (([super init]))
        self->_base = aBase;
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
    WOMPZWrapper *transformedValue = nil;
    @try
    {
        transformedValue = [WOMPZWrapper wrapperWithString:value inBase:_base];     // will throw if not a valid value
    }
    @catch (id e)
    {
        if (![WO_GMP_CONVERSION_EXCEPTION isEqualTo:[e name]])
            @throw e;
    }
    return transformedValue;
}

- (id)transformedValue:(id)value
{
    if (!value) return nil;
    NSParameterAssert([value respondsToSelector:@selector(stringForBase:)]);
    return [value stringForBase:_base];
}

@end

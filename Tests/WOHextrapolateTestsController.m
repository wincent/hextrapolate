//
// WOHextrapolateTestsController.m
// Hextrapolate
//
// Created by Wincent Colaiuta on 6 April 2007.
// Copyright 2007 Wincent Colaiuta.
// $Id: WOHextrapolateTestsController.m 89 2007-04-25 10:37:08Z wincent $

// class header
#import "WOHextrapolateTestsController.h"

// system headers
#import <libkern/OSAtomic.h>            /* OSAtomicIncrement32Barrier() */

// other headers
#import "WOHextrapolateController.h"    /* for setExitCode: method */

@implementation WOHextrapolateTestsController

+ (void)load
{
    static int32_t initialized = 0;
    if (OSAtomicIncrement32Barrier(&initialized) != 1) return;  // do this once only
    
    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
    
    // keep three components ("/", "Tests", "WOHextrapolateTestsController.m"), strip the rest
    (void)[[self alloc] initWithPath:__FILE__ keepComponents:3]; // will release self after running tests
    [pool release];
}

- (void)runTests:(NSNotification *)aNotification
{
    // don't call super, just reimplement desired functionality
    [NSObject cancelPreviousPerformRequestsWithTarget:self selector:@selector(applicationFailedToFinishLaunching:) object:nil];
    [[NSNotificationCenter defaultCenter] removeObserver:self];
    
    WOTest *tester = [WOTest sharedInstance];
    [tester setTrimInitialPathComponents:_trimPathComponents];
    [tester runAllTests];
    
    // now check for loaded plug-ins, load necessary test bundles, and run those tests
    
    
    if (![tester testsWereSuccessful])
    {
        id delegate = [NSApp delegate];
        if (delegate && [delegate respondsToSelector:@selector(setExitCode:)])
            [delegate setExitCode:EXIT_FAILURE];
    }
    
    [self autorelease];                             // balance alloc/init in load method
    [NSApp terminate:self];                         // all done
}

@end

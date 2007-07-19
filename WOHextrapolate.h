//
// WOHextrapolate.h
// Hextrapolate
//
// Created by Wincent Colaiuta on 6 April 2007.
// Copyright 2007 Wincent Colaiuta.
// $Id: WOHextrapolate.h 67 2007-04-08 11:32:36Z wincent $

#define WO_MIN_BASE                 2
#define WO_MAX_BASE                 36
#define WO_DEFAULT_BASE             2
#define WO_DEFAULT_ENCODING         kCFStringEncodingASCII

#pragma mark URLs

#define WO_HEXTRAPOLATE_HELP_URL            @"http://wincent.com/a/products/hextrapolate/support/"
#define WO_HEXTRAPOLATE_PURCHASE_URL        @"https://secure.wincent.com/a/products/hextrapolate/purchase/"

// TODO: make feedback@wincent.com a gateway into the backend issue tracker
#define WO_HEXTRAPOLATE_FEEDBACK_URL        @"mailto:feedback@wincent.com?subject=Hextrapolate%20feedback"

//! Unique name for GMP conversion exceptions: these should be non-fatal so want to catch them
#define WO_GMP_CONVERSION_EXCEPTION         @"WOGMPConversionException"

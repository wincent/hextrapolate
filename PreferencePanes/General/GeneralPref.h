//
// GeneralPref.h
// Hextrapolate
//
// Created by Wincent Colaiuta on 7 April 2007.
// Copyright 2007 Wincent Colaiuta.
// $Id: GeneralPref.h 60 2007-04-07 17:20:44Z wincent $

#import <PreferencePanes/PreferencePanes.h>

#ifndef WO_PREF_PATH
#define WO_PREF_PATH(path) @"values." path
#endif

#define WO_HEXTRAPOLATE_TEXTURE_PREF        @"UseBrushedMetal"
#define WO_HEXTRAPOLATE_CLOSE_PREF          @"ClosingTheMainWindowQuits"
#define WO_HEXTRAPOLATE_FLOAT_PREF          @"WindowFloatsAboveOtherApplications"

@interface GeneralPref : NSPreferencePane {

}

@end

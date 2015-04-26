//
//  definitions.h
//  mRingo
//
//  Created by Chandra on 4/17/15.
//  Copyright (c) 2015 4Faces. All rights reserved.
//

#define NowTimeStamp [NSString stringWithFormat:@"%f",[[NSDate date] timeIntervalSince1970] * 1000]

#define UIColorFromRGB(rgbValue) [UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 green:((float)((rgbValue & 0xFF00) >> 8))/255.0 blue:((float)(rgbValue & 0xFF))/255.0 alpha:1.0]

// =================  Date and Time formats
#pragma mark - Date formats
//                            0      1     2    3    4    5    6   7
#define kJournalDateFormat  @"yyyy':'MMM':'dd':'hh':'mm':'ss':'a':'EEE"

#define kSystemFontMedium         @"AvenirNext-Medium"

// =================  Theme Colors
#pragma mark - Colors
#define themeVioletLite1    UIColorFromRGB(0x522E52)
#define themeViolet         UIColorFromRGB(0x351836)
#define themeVioletDark     UIColorFromRGB(0x2D182D)
#define themeVioletDark1    UIColorFromRGB(0x241024)

#define mRingoViolet        UIColorFromRGB(0x3C1E3C) //260A33
#define mRingoVioletLight   UIColorFromRGB(0x494274)
#define mRingoVioletFade    UIColorFromRGB(0x70729D)
#define mRingoViewBackColor UIColorFromRGB(0xF0F0F0)
#define mRingoGray1         UIColorFromRGB(0xF0F0F0)
#define mRingoGray2         UIColorFromRGB(0xE1E1E1)
#define mRingoGray3         UIColorFromRGB(0xD2D2D2)

#define ColorVERGE          UIColorFromRGB(0xF93116)
#define ColorSky            UIColorFromRGB(0x34AADC)
#define ColorCustard        UIColorFromRGB(0xFFDB4C)
#define ColorHipBlue        UIColorFromRGB(0x173C6E)
#define ColorBrickRed       UIColorFromRGB(0xD5584E) // R: 213, G: 88, B: 78
#define ColorBrickAttension UIColorFromRGB(0xF0463A) // 240 70 58
#define ColorBrickOldWin    UIColorFromRGB(0x28463A) // 40, 70, 58

//Primary
#define ColorWHITE          UIColorFromRGB(0xFFFFFF)
#define ColorBLACK          UIColorFromRGB(0x000000)

// =================  UI Scales
#pragma mark - UI Scales
#define kControlAnimationDuration       0.2f
#define mRingoButtonLayerWidth          1.5f
#define mRingoButtonCornerRadius        3.0f
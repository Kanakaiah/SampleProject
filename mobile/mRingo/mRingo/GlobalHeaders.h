//
//  GlobalHeaders.h
//  mRingo
//
//  Created by Chandra on 11/24/14.
//  Copyright (c) 2014 4Faces. All rights reserved.
//

#ifndef mRingo_GlobalHeaders_h
#define mRingo_GlobalHeaders_h

#define UIColorFromHexRGB(rgbValue) [UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 green:((float)((rgbValue & 0xFF00) >> 8))/255.0 blue:((float)(rgbValue & 0xFF))/255.0 alpha:1.0]
#define UIColorFromRGB(R,G,B,A) [UIColor colorWithRed:R/255.0 green:G/255.0 blue:B/255.0 alpha:A];
#endif

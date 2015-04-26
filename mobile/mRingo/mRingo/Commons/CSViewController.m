//
//  CSViewController.m
//  mRingo
//
//  Created by Chandra on 4/17/15.
//  Copyright (c) 2015 4Faces. All rights reserved.
//

#import "CSViewController.h"

@implementation CSViewController

-(void)viewDidLoad
{
    [super viewDidLoad];
    [self styleTheme];
}

#pragma mark - Global theme
-(void)styleTheme
{
    self.view.backgroundColor = mRingoViewBackColor;
}

#pragma mark - status bar appearance
-(BOOL)prefersStatusBarHidden
{
    return NO;
}

-(UIStatusBarStyle)preferredStatusBarStyle
{
    return UIStatusBarStyleLightContent;
}

@end

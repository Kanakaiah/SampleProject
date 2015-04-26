//
//  CSViewController.m
//  mRingo
//
//  Created by Chandra on 4/17/15.
//  Copyright (c) 2015 4Faces. All rights reserved.
//

#import "CSButton.h"

@interface CSButton ()
@property UIColor *iColor;
@end

@implementation CSButton


#pragma mark - Initalization
- (id)initWithFrame:(CGRect)frame //code
{
    self = [super initWithFrame:frame];
    return self;
}

- (void)stylizeWithColor:(UIColor *)color
{
    self.iColor = color;
    self.titleLabel.font      = [UIFont fontWithName:@"Roboto-Medium"
                                                size:14.0f];
    self.layer.borderWidth    = mRingoButtonLayerWidth;
    self.layer.cornerRadius   = mRingoButtonCornerRadius;
    self.layer.borderColor    = color.CGColor;
    self.layer.masksToBounds  = YES;
    [self setAdjustsImageWhenHighlighted:NO];
    [self setTitleColor:color forState:UIControlStateNormal];
    [self setTitleColor:mRingoViewBackColor forState:UIControlStateSelected];
    [self setTitleColor:mRingoViewBackColor forState:UIControlStateHighlighted];
    
    
    [self addTarget:self
             action:@selector(aButtonPressed:)
   forControlEvents:UIControlEventTouchDown];
    [self addTarget:self
             action:@selector(aButtonDragged:)
   forControlEvents:UIControlEventTouchDragOutside];
    [self addTarget:self
             action:@selector(clearButton:)
   forControlEvents:UIControlEventTouchUpInside];
    
}

-(void)aButtonPressed: (UIButton *)sender
{
    [UIView animateWithDuration:kControlAnimationDuration
                     animations:^{
                             sender.backgroundColor = self.iColor;
                     }];
}

-(void)aButtonDragged: (UIButton *)sender
{
    [UIView animateWithDuration:kControlAnimationDuration
                     animations:^{
                         sender.backgroundColor = mRingoViewBackColor;
                     }];
}

-(void)clearButton: (UIButton *)sender
{
    [self aButtonDragged:sender];
}
@end

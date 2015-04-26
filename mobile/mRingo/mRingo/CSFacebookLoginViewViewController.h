//
//  CSFacebookLoginViewViewController.h
//  mRingo
//
//  Created by Chandra on 11/3/14.
//  Copyright (c) 2014 4Faces. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <FacebookSDK/FacebookSDK.h>

@interface CSFacebookLoginViewViewController : UIViewController <FBLoginViewDelegate>
@property (weak, atomic) IBOutlet FBLoginView *loginButton;
@property (weak, nonatomic) IBOutlet UILabel *lblLoginStatus;
@property (weak, nonatomic) IBOutlet UILabel *lblUsername;
@property (weak, nonatomic) IBOutlet UILabel *lblEmail;
@property (weak, nonatomic) IBOutlet FBProfilePictureView *profilePicture;
@property (weak, nonatomic) IBOutlet UIWebView *fbWebView;

-(void)toggleHiddenState:(BOOL)shouldHide;

@end

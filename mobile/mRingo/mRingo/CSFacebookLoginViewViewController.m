//
//  CSFacebookLoginViewViewController.m
//  mRingo
//
//  Created by Chandra on 11/3/14.
//  Copyright (c) 2014 4Faces. All rights reserved.
//

#import "CSFacebookLoginViewViewController.h"
#import <FacebookSDK/FBSession.h>

@interface CSFacebookLoginViewViewController ()

@end

@implementation CSFacebookLoginViewViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self toggleHiddenState:YES];
    self.lblLoginStatus.text = @"";
    
    self.loginButton.readPermissions = @[@"public_profile", @"email"];
    
    self.loginButton.delegate = self;

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)toggleHiddenState:(BOOL)shouldHide
{
    self.lblUsername.hidden = shouldHide;
    self.lblEmail.hidden = shouldHide;
    self.profilePicture.hidden = shouldHide;
}

-(void)loginViewShowingLoggedInUser:(FBLoginView *)loginView{
    self.lblLoginStatus.text = @"You are logged in.";
    
    [self toggleHiddenState:NO];
}

-(void)callThisMethod
{
    FBRequest *request = [[FBRequest alloc] initWithSession:FBSession.activeSession
                                                  graphPath:@"me/home"];
    NSLog(@"-----------------------%@",request);
}


-(void)loginViewFetchedUserInfo:(FBLoginView *)loginView user:(id<FBGraphUser>)user
{
    NSLog(@"%@", user);
    
    NSString *fbAccessToken = [[[FBSession activeSession] accessTokenData] accessToken];
    NSLog(@"Token is : %@",fbAccessToken);

    
    self.profilePicture.profileID = user.objectID;

    NSLog(@"========%@",[user objectForKey:@"hometown"][@"name"]);
    NSLog(@"========%@",[user objectForKey:@"work"]);

    self.lblEmail.text = user.name;
    self.lblEmail.text = [user objectForKey:@"email"];
    
    NSString *fullURL = [user objectForKey:@"link"];
    NSURL *url = [NSURL URLWithString:fullURL];
    NSURLRequest *requestObj = [NSURLRequest requestWithURL:url];
    [self.fbWebView loadRequest:requestObj];
    
    [self callThisMethod];
    
}

-(void)loginViewShowingLoggedOutUser:(FBLoginView *)loginView{
    self.lblLoginStatus.text = @"You are logged out";
    
    [self toggleHiddenState:YES];
}

-(void)loginView:(FBLoginView *)loginView handleError:(NSError *)error{
    NSLog(@"%@", [error localizedDescription]);
}
@end

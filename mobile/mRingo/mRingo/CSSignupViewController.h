//
//  CSSignupViewController.h
//  RNFrostedSidebar
//
//  Created by Chandra on 10/30/14.
//  Copyright (c) 2014 Ryan Nystrom. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CSSignupViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>
@property (nonatomic, weak) IBOutlet UITableView *singupInfoTableView;
@property (nonatomic, strong) NSArray *signupFields;
@end

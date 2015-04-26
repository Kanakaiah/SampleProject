//
//  CSBuildProfileViewController.h
//  mRingo
//
//  Created by Chandra on 11/1/14.
//  Copyright (c) 2014 4Faces. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CSBuildProfileViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *buildProfileTableView;
@property (strong, nonatomic) NSArray *profileFields;

-(IBAction)didTouchSubmitProfile:(id)sender;
@end

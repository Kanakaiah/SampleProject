//
//  CSBuildProfileViewController.m
//  mRingo
//
//  Created by Chandra on 11/1/14.
//  Copyright (c) 2014 4Faces. All rights reserved.
//

#import "CSBuildProfileViewController.h"
#import "CSBuildProfileTableViewCell.h"

@interface CSBuildProfileViewController ()

@end

@implementation CSBuildProfileViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.profileFields = [NSArray arrayWithObjects:@"First name", @"Last name", @"What do you do?", @"Location", nil];
    // Do any additional setup after loading the view.
}

-(void)viewWillAppear:(BOOL)animated
{
    self.buildProfileTableView.dataSource = self;
    self.buildProfileTableView.delegate = self;
    [self.buildProfileTableView setScrollEnabled:NO];
    self.navigationItem.hidesBackButton = YES;
//    self.navigationItem.backBarButtonItem.enabled = NO;
    self.navigationItem.title = @"Build your profile";
//    self.automaticallyAdjustsScrollViewInsets = NO;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table View Delegates
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.profileFields count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *simpleCellIdentifier = @"ProfileTableCell";
    
    CSBuildProfileTableViewCell *cell = (CSBuildProfileTableViewCell *)[tableView dequeueReusableCellWithIdentifier:simpleCellIdentifier];
    
    if (cell == nil) {
        cell = [[CSBuildProfileTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:simpleCellIdentifier];
    }
    
    [cell setPlaceHolderText:[self.profileFields objectAtIndex:indexPath.row]];
        
    return cell;
}

-(IBAction)didTouchSubmitProfile:(id)sender
{
    [[[UIAlertView alloc]initWithTitle:@"Submitted"
                               message:nil
                              delegate:nil
                     cancelButtonTitle:@"OK"
                     otherButtonTitles:nil, nil]show];
}
@end

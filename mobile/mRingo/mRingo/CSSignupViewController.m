//
//  CSSignupViewController.m
//  RNFrostedSidebar
//
//  Created by Chandra on 10/30/14.
//

#import "CSSignupViewController.h"
#import "CSSignupTableViewCell.h"

@interface CSSignupViewController()

@end

@implementation CSSignupViewController
@synthesize signupFields;

#pragma mark - View handling
-(void)viewDidLoad
{
    [super viewDidLoad];
    signupFields = [NSArray arrayWithObjects:@"Email ID", @"Password", @"Confirm Password", nil];
}

-(void)viewWillAppear:(BOOL)animated
{
    [self.navigationController.navigationBar setHidden:NO];
    self.navigationItem.title = @"Sign up";
    self.singupInfoTableView.scrollEnabled = NO;
}

#pragma mark - Table View Delegates
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [signupFields count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *simpleTableIdentifier = @"SimpleTableCell";
    
    CSSignupTableViewCell *cell = (CSSignupTableViewCell *)[tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    
    if (cell == nil) {
        cell = [[CSSignupTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:simpleTableIdentifier];
    }
    
    [cell setPlaceHolderText:[signupFields objectAtIndex:indexPath.row]];
    
    if(indexPath.row != 0)
        cell.textField.secureTextEntry = YES;
    
    return cell;
}

@end

//
//  CSSearchResultsViewController.m
//  mRingo
//
//  Created by Chandra on 11/1/14.
//  Copyright (c) 2014 4Faces. All rights reserved.
//

#import "CSSearchResultsViewController.h"
#import "CSSearchResultsTableViewCell.h"

@interface CSSearchResultsViewController ()

@end

@implementation CSSearchResultsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void) viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    [self.navigationController.navigationBar setHidden:NO];
    self.navigationItem.title = @"Search";
    
    self.searchResultsTableView.delegate = self;
    self.searchResultsTableView.dataSource = self;
    
    self.searchResultsName = [NSArray arrayWithObjects:@"Dimitri Vegas", @"Armin Buuren", @"David Guetta", @"Nicky Romero", @"Check This", nil];
    self.searchResultsAddress = [NSArray arrayWithObjects:
                                 @"212 Mary Rd. Cupertino, CA 12345",
                                 @"432 Cross Rd. Cupertino, CA 12345", @"980 First Rd. Cupertino, CA 12345", @"213 Third Rd. Cupertino, CA 12346", @"12 Fourth Rd. Cupertino, CA 12347", nil];
    
    self.searchResultsMobileNumber = [NSArray arrayWithObjects:@"(510) 123 6758", @"(510) 756 8987", @"(510) 657 4563", @"(510) 876 5060", @"(510) 324 1254", nil];
    
    self.searchResultsRating = [NSArray arrayWithObjects:@"★★★★☆", @"★★★☆☆", @"★★★☆☆", @"★★★★★", @"★★★★★", nil];
    
    self.searchResultsDistance = [NSArray arrayWithObjects:@"8", @"11", @"13", @"24", @"29", nil];
}

#pragma mark - Table View Delegates
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.searchResultsName count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *simpleCellIdentifier = @"searchResultsCell";
    
    CSSearchResultsTableViewCell *cell = (CSSearchResultsTableViewCell *)[tableView dequeueReusableCellWithIdentifier:simpleCellIdentifier];
    
    if (cell == nil){
        cell = [[CSSearchResultsTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:simpleCellIdentifier];
    }
    
//    [cell setPlaceHolderText:[self.profileFields objectAtIndex:indexPath.row]];
    cell.name.text = [self.searchResultsName objectAtIndex:indexPath.row];
    cell.address.text = [self.searchResultsAddress objectAtIndex:indexPath.row];
    cell.mobile.text = [self.searchResultsMobileNumber objectAtIndex:indexPath.row];
    cell.rating.text = [self.searchResultsRating objectAtIndex:indexPath.row];
    cell.distance.text = [self.searchResultsDistance objectAtIndex:indexPath.row];
    
    return cell;
}

@end

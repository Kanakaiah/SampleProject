//
//  CSSearchResultsViewController.h
//  mRingo
//
//  Created by Chandra on 11/1/14.
//  Copyright (c) 2014 4Faces. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CSSearchResultsViewController : UIViewController<UITableViewDataSource, UITableViewDelegate>
@property (weak, nonatomic) IBOutlet UITableView *searchResultsTableView;
@property(strong, nonatomic) NSArray *searchResultsName;
@property(strong, nonatomic) NSArray *searchResultsAddress;
@property(strong, nonatomic) NSArray *searchResultsMobileNumber;
@property(strong, nonatomic) NSArray *searchResultsRating;
@property(strong, nonatomic) NSArray *searchResultsDistance;

@end

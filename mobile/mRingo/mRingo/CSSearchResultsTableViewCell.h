//
//  CSSearchResultsTableViewCell.h
//  mRingo
//
//  Created by Chandra on 11/1/14.
//  Copyright (c) 2014 4Faces. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CSSearchResultsTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *name;
@property (weak, nonatomic) IBOutlet UILabel *address;
@property (weak, nonatomic) IBOutlet UILabel *mobile;
@property (weak, nonatomic) IBOutlet UILabel *rating;
@property (weak, nonatomic) IBOutlet UILabel *distance;
@end

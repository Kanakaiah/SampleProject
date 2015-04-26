//
//  CSSignupTableViewCell.h
//  RNFrostedSidebar
//
//  Created by Chandra on 10/30/14.
//  Copyright (c) 2014 Ryan Nystrom. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CSSignupTableViewCell : UITableViewCell
@property (nonatomic, weak) IBOutlet UITextField *textField;
-(void)setPlaceHolderText:(NSString *)text;
@end

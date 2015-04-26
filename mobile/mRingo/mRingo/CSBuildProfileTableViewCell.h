//
//  CSBuildProfileTableViewCell.h
//  mRingo
//
//  Created by Chandra on 11/1/14.
//  Copyright (c) 2014 4Faces. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CSBuildProfileTableViewCell : UITableViewCell
@property (nonatomic, weak) IBOutlet UITextField *textField;
-(void)setPlaceHolderText:(NSString *)text;
@end

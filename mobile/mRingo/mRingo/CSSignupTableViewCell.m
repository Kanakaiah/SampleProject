//
//  CSSignupTableViewCell.m
//  RNFrostedSidebar
//
//  Created by Chandra on 10/30/14.
//  Copyright (c) 2014 Ryan Nystrom. All rights reserved.
//

#import "CSSignupTableViewCell.h"

@implementation CSSignupTableViewCell

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

-(void)setPlaceHolderText:(NSString *)text
{
    self.textField.placeholder = text;
}
@end

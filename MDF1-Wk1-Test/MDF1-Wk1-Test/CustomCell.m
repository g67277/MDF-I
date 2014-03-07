//
//  CustomCell.m
//  MDF1-Wk1-Test
//
//  Created by Nazir Shuqair on 3/4/14.
//  Copyright (c) 2014 Me Time Studios. All rights reserved.
//

#import "CustomCell.h"

@implementation CustomCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void) refreshCellWithInfo:(NSString*) firstString second:(NSString*) secondString cellImage:(UIImage*)cellImage{
    firstLabel.text = firstString;
    secondLabel.text = secondString;
    myImageView.image = cellImage;
    
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end

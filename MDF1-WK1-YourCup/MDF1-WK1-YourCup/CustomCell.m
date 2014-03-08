//
//  CustomCell.m
//  MDF1-WK1-YourCup
//
//  Created by Nazir Shuqair on 3/5/14.
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




- (void) refreshCellWithInfo:(NSString*) team1 team2:(NSString*) team2 team1Img:(UIImage*)team1Img team2Img:(UIImage*)team2Img{
    
    team1Label.text = team1;
    team2Label.text = team2;
    team1Image.image = team1Img;
    team2Image.image = team2Img;
    
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end

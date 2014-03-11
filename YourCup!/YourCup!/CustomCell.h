//
//  CustomCell.h
//  YourCup!
//
//  Created by Nazir Shuqair on 3/9/14.
//  Copyright (c) 2014 Me Time Studios. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomCell : UITableViewCell{
    
    IBOutlet UILabel* team1Label;
    IBOutlet UILabel* team2Label;
    IBOutlet UILabel* vs;
    
    IBOutlet UIImageView* team1Image;
    IBOutlet UIImageView* team2Image;
    
}


- (void) refreshCellWithInfo:(NSString*) team1 team2:(NSString*) team2 team1Img:(UIImage*)team1Img team2Img:(UIImage*)team2Img;


@end

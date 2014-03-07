//
//  CustomCell.h
//  MDF1-Wk1-Test
//
//  Created by Nazir Shuqair on 3/4/14.
//  Copyright (c) 2014 Me Time Studios. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomCell : UITableViewCell{
    
    IBOutlet UILabel *firstLabel;
    IBOutlet UILabel *secondLabel;
    IBOutlet UIImageView *myImageView;
    
}

- (void) refreshCellWithInfo:(NSString*) firstString second:(NSString*) secondString cellImage:(UIImage*)cellImage;


@end
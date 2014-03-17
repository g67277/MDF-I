//
//  CustomCell.h
//  Feed Me
//
//  Created by Nazir Shuqair on 3/17/14.
//  Copyright (c) 2014 Me Time Studios. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomCell : UITableViewCell{
    
    IBOutlet UILabel* testLabel;
}

- (void) refreshCellWithInfo:(NSString*) label;


@end

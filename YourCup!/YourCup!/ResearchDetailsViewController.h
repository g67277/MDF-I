//
//  ResearchDetailsViewController.h
//  YourCup!
//
//  Created by Nazir Shuqair on 3/12/14.
//  Copyright (c) 2014 Me Time Studios. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DataLayerSchedule.h"

@interface ResearchDetailsViewController : UIViewController{
    
    IBOutlet UILabel* dResearchLabel;
    IBOutlet UILabel* dLinkLabel;
    IBOutlet UITextView* dResearchText;
    IBOutlet UIImageView* dResearchImg;
    
    IBOutlet UIView* scrollBox;
    IBOutlet UIScrollView* scrollView;
    
}

@property (nonatomic, strong) DataLayerSchedule* currentCell2;

- (IBAction)onClick:(id)sender;


@end

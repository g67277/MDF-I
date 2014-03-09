//
//  ScheduleDetailsViewController.h
//  YourCup!
//
//  Created by Nazir Shuqair on 3/9/14.
//  Copyright (c) 2014 Me Time Studios. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ScheduleDetailsViewController : UIViewController{
    
    IBOutlet UILabel* dTeam1;
    IBOutlet UILabel* dTeam2;
    IBOutlet UILabel* dTime;
    IBOutlet UILabel* dDate;
    IBOutlet UILabel* team1Points;
    IBOutlet UILabel* team2Points;
    IBOutlet UILabel* city;
    IBOutlet UILabel* weather;
    
    IBOutlet UIImageView* dTeam1Image;
    IBOutlet UIImageView* dTeam2Image;
    IBOutlet UIImageView* stadiumImg;
    
    IBOutlet UIView* box1;
    IBOutlet UIView* box2;
    IBOutlet UIView* box3;
    
    IBOutlet UIView* scrollBox;
    IBOutlet UIScrollView* scrollView;

}

@end

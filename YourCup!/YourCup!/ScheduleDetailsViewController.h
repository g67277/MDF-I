//
//  ScheduleDetailsViewController.h
//  YourCup!
//
//  Created by Nazir Shuqair on 3/9/14.
//  Copyright (c) 2014 Me Time Studios. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DataLayerSchedule.h"

@interface ScheduleDetailsViewController : UIViewController{
    
    IBOutlet UILabel* dTeam1;
    IBOutlet UILabel* dTeam2;
    IBOutlet UILabel* dTime;
    IBOutlet UILabel* dDate;
    IBOutlet UILabel* team1Points;
    IBOutlet UILabel* team2Points;
    IBOutlet UILabel* city;
    IBOutlet UILabel* weather;
    
    // needs refactoring
    
    IBOutlet UIImageView* dTeam1Image;
    IBOutlet UIImageView* dTeam2Image;
    IBOutlet UIImageView* dTeam1Image2;
    IBOutlet UIImageView* dTeam2Image2;
    //-------------------------------
    IBOutlet UIImageView* stadiumImg;
    IBOutlet UIImageView* cityImg;
    
    IBOutlet UIView* box1;
    IBOutlet UIView* box2;
    IBOutlet UIView* box3;
    
    IBOutlet UIView* scrollBox;
    IBOutlet UIScrollView* scrollView;

}

@property (nonatomic, strong) DataLayerSchedule* currentCell;

@end

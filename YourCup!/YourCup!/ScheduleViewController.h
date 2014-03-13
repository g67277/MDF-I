//
//  ScheduleViewController.h
//  YourCup!
//
//  Created by Nazir Shuqair on 3/9/14.
//  Copyright (c) 2014 Me Time Studios. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BlurEffect.h"
#import "CustomView.h"
#import "ScheduleData.h"


@interface ScheduleViewController : UIViewController{
    
    IBOutlet UITableView* ScheduleTableView;
    IBOutlet UITableView* fullSailTableView;
    
    BlurEffect* blurEffect;
    CustomView* customeView;
    ScheduleData* scheduleData;
    DataLayerSchedule *dataLayer;
    DataLayerSchedule *currentCell;
    DataLayerSchedule *currentCell2;
    
    NSMutableArray* cellMatchArray;
    NSMutableArray* cellResearchArray;
    


}



@end

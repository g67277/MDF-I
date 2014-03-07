//
//  DetailsView.h
//  MDF1-WK1-YourCup
//
//  Created by Nazir Shuqair on 3/5/14.
//  Copyright (c) 2014 Me Time Studios. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ViewController.h"
#import "DataLayer.h"

@interface DetailsView : UIViewController{
    
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
    
}

@property (nonatomic, strong) DataLayer* currentCell;

@end

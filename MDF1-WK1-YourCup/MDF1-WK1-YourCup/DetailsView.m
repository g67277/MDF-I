//
//  DetailsView.m
//  MDF1-WK1-YourCup
//
//  Created by Nazir Shuqair on 3/5/14.
//  Copyright (c) 2014 Me Time Studios. All rights reserved.
//

#import "DetailsView.h"

@interface DetailsView ()

@end

@implementation DetailsView

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void) viewWillAppear:(BOOL)animated{
    
    dTeam1.text = self.currentCell.cTeam1;
    dTeam2.text = self.currentCell.cTeam2;
    dTime.text = self.currentCell.cTime;
    dDate.text = self.currentCell.cDate;
    team1Points.text = self.currentCell.cTeam1Points;
    team2Points.text = self.currentCell.cTeam2Points;
    city.text = self.currentCell.cCity;
    weather.text = self.currentCell.cWeather;
    
    dTeam1Image.image = self.currentCell.cTeam1Image;
    dTeam2Image.image = self.currentCell.cTeam2Image;
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
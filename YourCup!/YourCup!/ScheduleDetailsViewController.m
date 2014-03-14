//
//  ScheduleDetailsViewController.m
//  YourCup!
//
//  Created by Nazir Shuqair on 3/9/14.
//  Copyright (c) 2014 Me Time Studios. All rights reserved.
//

#import "ScheduleDetailsViewController.h"
#import "BlurEffect.h"
#import "CustomView.h"

@interface ScheduleDetailsViewController ()

@property (nonatomic, weak) IBOutlet UIImageView* background;

@end

@implementation ScheduleDetailsViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void) viewWillAppear:(BOOL)animated{
    
    // Info for the detail page sent from the main view controller
    
    dTeam1.text = self.currentCell.cTeam1;
    dTeam2.text = self.currentCell.cTeam2;
    dTime.text = self.currentCell.cTime;
    dDate.text = self.currentCell.cDate;
    team1Points.text = self.currentCell.cTeam1Points;
    team2Points.text = self.currentCell.cTeam2Points;
    city.text = self.currentCell.cCity;
    weather.text = self.currentCell.cWeather;
    
    //needs refactoring
    
    dTeam1Image.image = self.currentCell.cTeam1Image;
    dTeam2Image.image = self.currentCell.cTeam2Image;    
    dTeam1Image2.image = self.currentCell.cTeam1Image;
    dTeam2Image2.image = self.currentCell.cTeam2Image;
    //------------------------------------------------
    stadiumImg.image = self.currentCell.cStadiumImg;
    cityImg.image = self.currentCell.cCityImg;
    
    
}


- (void)viewDidLoad
{
    // Class initialization
    
    BlurEffect* blurEffect = [[BlurEffect alloc] init];
    CustomView* customView = [[CustomView alloc] init];
    
    // Clearing view colors
    
    scrollBox.backgroundColor = [UIColor clearColor];
    scrollView.backgroundColor = [UIColor clearColor];
    
    // Changing the uiview/image box
    box1 = [customView uniformView:box1 color:[UIColor colorWithWhite:1 alpha:.85]];
    box2 = [customView uniformView:box2 color:[UIColor colorWithWhite:1 alpha:1]];
    box3 = [customView uniformView:box3 color:[UIColor colorWithWhite:1 alpha:.85]];
    
    
    // Nav bar custome title/buttons
    
    self.navigationController.navigationBar.tintColor = [UIColor whiteColor];
    self.tabBarController.tabBar.tintColor = [UIColor whiteColor];
    [self.navigationController.navigationBar setTitleTextAttributes:@{NSForegroundColorAttributeName : [UIColor whiteColor], NSFontAttributeName : [UIFont fontWithName:@"HelveticaNeue-UltraLight" size:40]}];
    self.navigationItem.backBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"" style:UIBarButtonItemStylePlain target:nil action:nil];

    
    // Setting background
    
    UIImage* backgroundImg = [UIImage imageNamed:@"spain-back.jpg"];
    self.background.image = [blurEffect setupBlurredImage:backgroundImg];
    
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

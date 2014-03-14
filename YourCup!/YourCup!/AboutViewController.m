//
//  AboutViewController.m
//  YourCup!
//
//  Created by Nazir Shuqair on 3/13/14.
//  Copyright (c) 2014 Me Time Studios. All rights reserved.
//

#import "AboutViewController.h"
#import "DataLayerSchedule.h"
#import "ScheduleData.h"
#import "BlurEffect.h"

@interface AboutViewController ()

@property (nonatomic, weak) IBOutlet UIImageView* background;

@end

@implementation AboutViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}


- (void) viewWillAppear:(BOOL)animated{
    
    ScheduleData * scheduleData = [[ScheduleData alloc] init];
    
    
    appName.text = [scheduleData appName];
    appDisk.text = [scheduleData appDisc];
    
}

- (void)viewDidLoad
{
    
    // initializing classes
    
    BlurEffect* blurEffect = [[BlurEffect alloc] init];
    
    // adding a backgound blur
    
    UIImage* background = [UIImage imageNamed:@"italy-background.jpg"];
    self.background.image = [blurEffect setupBlurredImage:background];
    
    // Nav bar custome title/buttons
    
    //[self.navigationController.navigationBar setBackgroundImage:topBackground forBarMetrics:UIBarMetricsDefault];
    
    self.navigationController.navigationBar.tintColor = [UIColor whiteColor];
    self.tabBarController.tabBar.tintColor = [UIColor whiteColor];
    [self.navigationController.navigationBar setTitleTextAttributes:@{NSForegroundColorAttributeName : [UIColor whiteColor], NSFontAttributeName : [UIFont fontWithName:@"HelveticaNeue-UltraLight" size:40]}];
    self.navigationItem.backBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"" style:UIBarButtonItemStylePlain target:nil action:nil];
    
    // Tab bar custome changes
    
    self.tabBarController.tabBar.tintColor = [UIColor whiteColor];
    
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

//
//  ViewController.m
//  YourCup!
//
//  Created by Nazir Shuqair on 3/8/14.
//  Copyright (c) 2014 Me Time Studios. All rights reserved.
//

#import "ViewController.h"
#import "BlurEffect.h"
#import "CustomView.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *backgroundImg;

@end

@implementation ViewController

- (void)viewDidLoad
{
    // initializing classes
    
    blurEffect = [[BlurEffect alloc] init];
    customeView = [[CustomView alloc] init];
    
        
    
    // Changing the uiview/image box
    
    mainBox = [customeView uniformView:mainBox color:[UIColor colorWithWhite:1 alpha:1]];
    detailText = [customeView uniformView:detailText color:[UIColor colorWithWhite:1 alpha:1]];
    detailPanner = [customeView uniformImgBox:detailPanner];
    
    
    
    // adding a backgound blur
    
    UIImage* background = [UIImage imageNamed:@"brazil back"];
    self.backgroundImg.image = [blurEffect setupBlurredImage:background];
    
    // Nav bar custome title/buttons
    
    //[self.navigationController.navigationBar setBackgroundImage:topBackground forBarMetrics:UIBarMetricsDefault];
    
    self.navigationController.navigationBar.tintColor = [UIColor whiteColor];
    self.tabBarController.tabBar.tintColor = [UIColor whiteColor];
    [self.navigationController.navigationBar setTitleTextAttributes:@{NSForegroundColorAttributeName : [UIColor whiteColor], NSFontAttributeName : [UIFont fontWithName:@"HelveticaNeue-UltraLight" size:40]}];
    self.navigationItem.backBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"" style:UIBarButtonItemStylePlain target:nil action:nil];
    
    // Tab bar custome changes
    
    self.tabBarController.tabBar.tintColor = [UIColor whiteColor];

    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}



//----------------------------------------------------------------------------------------------------------------



- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

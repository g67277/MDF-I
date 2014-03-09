//
//  ScheduleDetailsViewController.m
//  YourCup!
//
//  Created by Nazir Shuqair on 3/9/14.
//  Copyright (c) 2014 Me Time Studios. All rights reserved.
//

#import "ScheduleDetailsViewController.h"
#import "BlurEffect.h"

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



- (void)viewDidLoad
{
    // Class initialization
    
    BlurEffect* blurEffect = [[BlurEffect alloc] init];
    
    
    // Clearing view colors
    
    scrollBox.backgroundColor = [UIColor clearColor];
    scrollView.backgroundColor = [UIColor clearColor];
    
    // Setting background
    
    UIImage* backgroundImg = [UIImage imageNamed:@"main background"];
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

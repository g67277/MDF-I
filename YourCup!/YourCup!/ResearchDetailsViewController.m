//
//  ResearchDetailsViewController.m
//  YourCup!
//
//  Created by Nazir Shuqair on 3/12/14.
//  Copyright (c) 2014 Me Time Studios. All rights reserved.
//

#import "ResearchDetailsViewController.h"
#import "BlurEffect.h"
#import "CustomView.h"


@interface ResearchDetailsViewController ()

@property (nonatomic, weak) IBOutlet UIImageView* background;


@end

@implementation ResearchDetailsViewController

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
    
    dResearchLabel.text = self.currentCell2.cResearchLabel;
    dLinkLabel.text = self.currentCell2.cLinkLabel;
    dResearchText.text = self.currentCell2.cResearchText;
    dResearchImg.image = self.currentCell2.cResearchImg;
    
}

- (IBAction)onClick:(id)sender{
    
    NSURL* url = [NSURL URLWithString:self.currentCell2.cLinkLabel];
    
    if (url != nil) {
        [[UIApplication sharedApplication] openURL:url];
    }
    
}

- (void)viewDidLoad
{
    // Class initialization
    
    BlurEffect* blurEffect = [[BlurEffect alloc] init];
    //CustomView* customView = [[CustomView alloc] init];
    
    // Clearing view colors
    
    scrollBox.backgroundColor = [UIColor clearColor];
    scrollView.backgroundColor = [UIColor clearColor];
    
    
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

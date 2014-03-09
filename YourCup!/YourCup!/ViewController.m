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
    
    BlurEffect* blurEffect = [[BlurEffect alloc] init];
    CustomView* customeView = [[CustomView alloc] init];
    
    // Changing the uiview/image box
    
    mainBox = [customeView uniformView:mainBox];
    detailText = [customeView uniformView:detailText];
    detailPanner = [customeView uniformImgBox:detailPanner];
    
    
    
    // adding a backgound blur
    
    UIImage* background = [UIImage imageNamed:@"main background"];
    self.backgroundImg.image = [blurEffect setupBlurredImage:background];
    
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

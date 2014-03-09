//
//  ScheduleViewController.m
//  YourCup!
//
//  Created by Nazir Shuqair on 3/9/14.
//  Copyright (c) 2014 Me Time Studios. All rights reserved.
//

#import "ScheduleViewController.h"
#import "BlurEffect.h"
#import "CustomView.h"
#import "DataLayerSchedule.h"
#import "ScheduleDetailsViewController.h"

@interface ScheduleViewController ()

@property (nonatomic, weak) IBOutlet UIImageView* background;

@end

@implementation ScheduleViewController

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    //NSLog(@"This is One");
    
    return 4;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    //NSLog(@"This is five");
    //NSLog(@"%@", indexPath);
    
    UITableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:@"scheduleCell"];
    
    cell.textLabel.text = @"test";
    
    
    return cell;
}

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
    // initialzing class
    BlurEffect* blurEffect = [[BlurEffect alloc] init];
    
    
    // setting background image;
    
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

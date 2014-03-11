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
#import "CustomCell.h"

@interface ScheduleViewController ()

@property (nonatomic, weak) IBOutlet UIImageView* background;

@end

@implementation ScheduleViewController



//------------------------------------- Number of rows ------------------------------------------------------------
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    //NSLog(@"This is One");
    
    return [cellMatchArray count];
}
//-----------------------------------------------------------------------------------------------------------------

//------------------------------------- Creating cells and populating data ----------------------------------------

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    //NSLog(@"This is five");
    //NSLog(@"%@", indexPath);
    
    CustomCell* cell = [tableView dequeueReusableCellWithIdentifier:@"scheduleCell"];
    
    currentCell = [cellMatchArray objectAtIndex:indexPath.row];
    [cell refreshCellWithInfo:currentCell.cTeam1 team2:currentCell.cTeam2 team1Img:currentCell.cTeam1Image team2Img:currentCell.cTeam2Image];
    
    cell.backgroundColor = [UIColor clearColor];
    
    return cell;
}
//-----------------------------------------------------------------------------------------------------------------

//------------------------------------- Segue methode -------------------------------------------------------------

- (void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    
    ScheduleDetailsViewController* detailView = segue.destinationViewController;
    if (detailView != nil) {
        UITableViewCell *cell = (UITableViewCell*)sender;
        NSIndexPath *indexPath = [ScheduleTableView indexPathForCell:cell];
        
        // get the string from the array based on the cell in the tabel view we clicked
        
        DataLayerSchedule *selectedString = [cellMatchArray objectAtIndex:indexPath.row];
        
        
        detailView.currentCell = selectedString;
    }
    
    
}
//-----------------------------------------------------------------------------------------------------------------




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
    blurEffect = [[BlurEffect alloc] init];
    customeView = [[CustomView alloc] init];
    scheduleData = [[ScheduleData alloc] init];
    
    // Match Schedule Data array
    
    cellMatchArray = [scheduleData matchArray];
    
    // Setting tableview to clear
    
    ScheduleTableView.backgroundColor = [UIColor clearColor];
    
    // Changing the uiview/image box
    
    // setting background image;
    
    UIImage* backgroundImg = [UIImage imageNamed:@"spain back"];
    
    
    // changing self background
    
    self.background.image = [blurEffect setupBlurredImage:backgroundImg];
    
    
    // Nav bar custome title/buttons
    
    self.navigationController.navigationBar.tintColor = [UIColor whiteColor];
    self.tabBarController.tabBar.tintColor = [UIColor whiteColor];
    //self.navigationController.navigationBar.translucent = YES;
    [self.navigationController.navigationBar setTitleTextAttributes:@{NSForegroundColorAttributeName : [UIColor whiteColor], NSFontAttributeName : [UIFont fontWithName:@"HelveticaNeue-UltraLight" size:40]}];
    self.navigationItem.backBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"" style:UIBarButtonItemStylePlain target:nil action:nil];
    
    
        [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

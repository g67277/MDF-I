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
#import "ResearchDetailsViewController.h"
#import "CustomCell.h"

@interface ScheduleViewController ()

@property (nonatomic, weak) IBOutlet UIImageView* background;

@end

@implementation ScheduleViewController



//------------------------------------- Number of rows ------------------------------------------------------------
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    if (tableView.tag == 1) {
        return [cellMatchArray count];
    }else if (tableView.tag == 2){
        return [cellResearchArray count];
    }
    
   
    return 0;
}
//-----------------------------------------------------------------------------------------------------------------

//------------------------------------- Creating cells and populating data ----------------------------------------

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    //NSLog(@"This is five");
    //NSLog(@"%@", indexPath);
    
    if (tableView.tag == 1) {
        CustomCell* cell = [tableView dequeueReusableCellWithIdentifier:@"scheduleCell"];
        currentCell = [cellMatchArray objectAtIndex:indexPath.row];
        [cell refreshCellWithInfo:currentCell.cTeam1 team2:currentCell.cTeam2 team1Img:currentCell.cTeam1Image team2Img:currentCell.cTeam2Image];
        cell.backgroundColor = [UIColor clearColor];
        
        return cell;
        
    }else if (tableView.tag == 2){
        CustomCell* cell2 = [tableView dequeueReusableCellWithIdentifier:@"fullSailCell"];
        currentCell2 = [cellResearchArray objectAtIndex:indexPath.row];
        [cell2 refreshResearchCellInfo:currentCell2.cResearchLabel rImage:currentCell2.cResearchImg];
        cell2.backgroundColor = [UIColor clearColor];

        return cell2;
    }
     
    
    
    return nil;
}
//-----------------------------------------------------------------------------------------------------------------

//------------------------------------- Segue methode -------------------------------------------------------------

- (void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    
    if ([segue.identifier  isEqual: @"researchToDetail"]) {
        
        ResearchDetailsViewController* researchDetail = segue.destinationViewController;
        if (researchDetail != nil) {
            UITableViewCell *cell2 = (UITableViewCell*)sender;
            NSIndexPath *indexPath = [fullSailTableView indexPathForCell:cell2];
            
            NSLog(@"%ld", (long)indexPath);
            
            DataLayerSchedule* selectedString2 = [cellResearchArray objectAtIndex:indexPath.row];
            
            researchDetail.currentCell2 = selectedString2;
        }
        
    }else if ([segue.identifier isEqual: @"scheduleToDetails"]){
        
        ScheduleDetailsViewController* detailView = segue.destinationViewController;
        if (detailView != nil) {
            UITableViewCell *cell = (UITableViewCell*)sender;
            NSIndexPath *indexPath = [ScheduleTableView indexPathForCell:cell];
            
            NSLog(@"%ld", (long)indexPath.row);

            
            // get the string from the array based on the cell in the tabel view we clicked
            
            DataLayerSchedule *selectedString = [cellMatchArray objectAtIndex:indexPath.row];
            
            
            detailView.currentCell = selectedString;
        }

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
    cellResearchArray = [scheduleData researchArray];
    
    NSLog(@"%@", cellResearchArray);
    
    
    // Setting tableview to clear
    
    ScheduleTableView.backgroundColor = [UIColor clearColor];
    
    // Changing the uiview/image box
    
    // setting background image;
    
    UIImage* backgroundImg = [UIImage imageNamed:@"brazil-back-2.jpg"];
    
    
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

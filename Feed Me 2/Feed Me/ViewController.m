//
//  ViewController.m
//  Feed Me
//
//  Created by Nazir Shuqair on 3/16/14.
//  Copyright (c) 2014 Me Time Studios. All rights reserved.
//

#import "ViewController.h"
#import "CustomCell.h"
#import "DataFeed.h"
#import "DetailsViewController.h"

@interface ViewController ()


@end

@implementation ViewController

//------------------------------------- Number of rows ------------------------------------------------------------

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    //NSLog(@"%d", [cellRestArray count]);
    
    return [cellRestArray count];
}
//-----------------------------------------------------------------------------------------------------------------

//------------------------------------- Creating cells and populating data ----------------------------------------

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    CustomCell* cell = [tableView dequeueReusableCellWithIdentifier:@"restCell"];
    currentCell = [cellRestArray objectAtIndex:indexPath.row];
    //NSLog(@"%@", currentCell.lTitle);
    [cell refreshCellWithInfo:currentCell.lTitle iconImg:currentCell.licon];
    
    return cell;
}
//-----------------------------------------------------------------------------------------------------------------

//------------------------------------- Segue methode -------------------------------------------------------------

- (void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    
    DetailsViewController* detailView = segue.destinationViewController;
    if (detailView != nil) {
        UITableViewCell *cell = (UITableViewCell*)sender;
        NSIndexPath *indexPath = [resturantTable indexPathForCell:cell];
        
        //NSLog(@"%ld", (long)indexPath);
        
        DataLayer* selectedString = [cellRestArray objectAtIndex:indexPath.row];
        
        detailView.currentCell = selectedString;
    }
    
}
//-----------------------------------------------------------------------------------------------------------------

- (void)viewDidLoad
{
    
    mainView.frame = CGRectMake(0, 0, self.view.frame.size.width, 568);
    
    dataFeed = [[DataFeed alloc] init];
    
    // Resturant Data array
    cellRestArray = [dataFeed restArray];
    coordinateArray = [dataFeed coordArray];
    
    //NSString* test = [[cellRestArray objectAtIndex:2] objectAtIndex:0];
    
    //NSLog(@"%@", test);
    
    // adding shadow to a uiview
    
    viewAll.layer.shadowOpacity = 0.5;
    viewAll.layer.shadowRadius = .5;
    viewAll.layer.shadowOffset = CGSizeMake(0.0f, 0.7f);
    
    
    //NSLog(@"%@", cellRestArray);
    
    locationManager = [[CLLocationManager alloc] init];
    if (locationManager != nil) {
        locationManager.desiredAccuracy  = kCLLocationAccuracyBest;
        locationManager.delegate = self;
        
        // tell core location to start updaing location info
        [locationManager startUpdatingLocation];
    }
        
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void) scrollViewDidScroll:(UIScrollView *)scrollView
{
    if (scrollView == mainScrollView) {
        CGFloat yPos = -scrollView.contentOffset.y;
        CGRect imgRect = mainView.frame;
        //NSLog(@"%f", yPos);
        if (yPos < 0){
            imgRect.origin.y = yPos/3;
            mainView.frame = imgRect;
        }
        
        if (yPos < -100) {
            [self.tabBarController.tabBar setHidden:YES];
        }else if (yPos > -100){
            [self.tabBarController.tabBar setHidden:NO];
        }

    }
}



- (void)locationManager:(CLLocationManager *)manager didUpdateToLocation:(CLLocation *)newLocation fromLocation:(CLLocation *)oldLocation{
    
    coord = newLocation.coordinate;
    
}

- (void) viewDidAppear:(BOOL)animated{
    
    CLLocationCoordinate2D zoomLocation = CLLocationCoordinate2DMake(38.9226662f,-77.2280853f);
    
    MKCoordinateSpan zoomSpan;
    zoomSpan.latitudeDelta = .02f;
    zoomSpan.longitudeDelta = .02f;
    [mainMap setRegion:MKCoordinateRegionMake(zoomLocation, zoomSpan) animated: true];
    
    [mainMap addAnnotations:coordinateArray];
    
}



- (IBAction)onClick:(UIButton *)button{
    
    //NSLog(@"%@", button);
    
    if (button.tag == 1) {
        backBtn.alpha = 0.0;
        backBtn.hidden = NO;
        [UIView animateWithDuration:0.5 animations:^{
            mainScrollView.frame = CGRectMake(0, 568, 320, 0);
            mainView.frame = CGRectMake(0, 568, 320, 0);
            backBtn.alpha = 1.0;
        }];
        
    }else if (button.tag == 2){
        [UIView animateWithDuration:0.5 animations:^{
            mainScrollView.frame = CGRectMake(0, 0, 320, 568);
            mainView.frame = CGRectMake(0, 0, 320, 568);
            backBtn.alpha = 0.0;
            [self scrollViewDidScroll:mainScrollView];
        }];
    }
}

- (IBAction)done:(UIStoryboardSegue*)segue{
    
    [self scrollViewDidScroll:mainScrollView];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

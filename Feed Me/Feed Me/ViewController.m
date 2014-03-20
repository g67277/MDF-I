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

@property (nonatomic, weak) IBOutlet UIView *mainView;

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
    
    
    
    dataFeed = [[DataFeed alloc] init];
    
    // Resturant Data array
    cellRestArray = [dataFeed restArray];
    coordinateArray = [dataFeed coordArray];
    
    
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

- (void)locationManager:(CLLocationManager *)manager didUpdateToLocation:(CLLocation *)newLocation fromLocation:(CLLocation *)oldLocation{
    
    coord = newLocation.coordinate;
    
}

- (void) viewDidAppear:(BOOL)animated{
    
    // Where I want to focus
    // Current location line
    //CLLocationCoordinate2D zoomLocation = CLLocationCoordinate2DMake(coord.latitude, coord.longitude);
    
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
        _mainView.hidden = YES;
        mainScrollView.hidden = YES;
        backBtn.hidden = NO;
    }else if (button.tag == 2){
        _mainView.hidden = NO;
        mainScrollView.hidden = NO;
        backBtn.hidden = YES;
    }
}

- (IBAction)done:(UIStoryboardSegue*)segue{
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

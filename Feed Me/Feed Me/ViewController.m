//
//  ViewController.m
//  Feed Me
//
//  Created by Nazir Shuqair on 3/16/14.
//  Copyright (c) 2014 Me Time Studios. All rights reserved.
//

#import "ViewController.h"
#import "CustomCell.h"

@interface ViewController ()

@end

@implementation ViewController

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return 6;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    CustomCell* cell = [tableView dequeueReusableCellWithIdentifier:@"restCell"];
    [cell refreshCellWithInfo:@"testing123"];
    
    return cell;
}

- (void)viewDidLoad
{
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
    
    CLLocationCoordinate2D zoomLocation = CLLocationCoordinate2DMake(coord.latitude, coord.longitude);
    
    MKCoordinateSpan zoomSpan;
    zoomSpan.latitudeDelta = .3f;
    zoomSpan.longitudeDelta = .3f;
    [mainMap setRegion:MKCoordinateRegionMake(zoomLocation, zoomSpan) animated: true];
    
}

- (IBAction)onClick:(UIStoryboardSegue*)segue{
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

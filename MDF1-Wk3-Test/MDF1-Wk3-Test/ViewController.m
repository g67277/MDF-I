//
//  ViewController.m
//  MDF1-Wk3-Test
//
//  Created by Nazir Shuqair on 3/16/14.
//  Copyright (c) 2014 Me Time Studios. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

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

- (void) viewDidAppear:(BOOL)animated{
    
    // where i want to focus
    CLLocationCoordinate2D zoomLocation = CLLocationCoordinate2DMake(39.0436f, -77.4875f);
    
    MKCoordinateSpan zoomSpan;
    zoomSpan.latitudeDelta = .3f;
    zoomSpan.longitudeDelta = .3f;
    
    [myMap setRegion:MKCoordinateRegionMake(zoomLocation, zoomSpan) animated: true];
    //myMap.region = MKCoordinateRegionMake(zoomLocation, zoomSpan);
    
    MKPointAnnotation *point = [[MKPointAnnotation alloc] init];
    point.coordinate = CLLocationCoordinate2DMake(39.0436f, -77.4875f);
    point.title = @"first One";
    [myMap addAnnotation:point];
    
}

- (void)locationManager:(CLLocationManager *)manager didUpdateToLocation:(CLLocation *)newLocation fromLocation:(CLLocation *)oldLocation{
    
    CLLocationCoordinate2D coord = newLocation.coordinate;
    
    latLabel.text = [NSString stringWithFormat:@"%g", coord.latitude];
    longLabel.text = [NSString stringWithFormat:@"%g", coord.longitude];
    
    
}

- (MKAnnotationView *)mapView:(MKMapView *)mapView viewForAnnotation:(id <MKAnnotation>)annotation{
    
    // checks for existing ping annotation view
    
    MKPinAnnotationView* pinView = (MKPinAnnotationView*)[mapView dequeueReusableAnnotationViewWithIdentifier:@"one"];
    if (pinView == nil) {
        // creates a new annotation view if one can't be reused

        pinView = [[MKPinAnnotationView alloc] initWithAnnotation:annotation reuseIdentifier:@"one"];
        //pinView.pinColor = MKPinAnnotationColorGreen;
        
        pinView.canShowCallout = true;
        pinView.animatesDrop = true;
    }
    // displays the pin annotation view
    
    return pinView;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

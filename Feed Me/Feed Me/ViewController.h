//
//  ViewController.h
//  Feed Me
//
//  Created by Nazir Shuqair on 3/16/14.
//  Copyright (c) 2014 Me Time Studios. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
#import "CustomCell.h"

@interface ViewController : UIViewController <MKMapViewDelegate, CLLocationManagerDelegate>{
    
    IBOutlet UITableView* resturantTable;
    
    IBOutlet MKMapView* mainMap;
    
    CLLocationManager* locationManager;
    
    CLLocationCoordinate2D coord;

}

@end

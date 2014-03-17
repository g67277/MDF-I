//
//  ViewController.h
//  MDF1-Wk3-Test
//
//  Created by Nazir Shuqair on 3/16/14.
//  Copyright (c) 2014 Me Time Studios. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
#import <CoreLocation/CoreLocation.h>

@interface ViewController : UIViewController<MKMapViewDelegate, CLLocationManagerDelegate>{
    
    IBOutlet MKMapView* myMap;
    IBOutlet UILabel* latLabel;
    IBOutlet UILabel* longLabel;
    
    CLLocationManager* locationManager;
}

@end

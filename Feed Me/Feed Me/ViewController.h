//
//  ViewController.h
//  Feed Me
//
//  Created by Nazir Shuqair on 3/16/14.
//  Copyright (c) 2014 Me Time Studios. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
#import <Accelerate/Accelerate.h>
#import "CustomCell.h"
#import "DataFeed.h"

@interface ViewController : UIViewController <MKMapViewDelegate, CLLocationManagerDelegate>{
    
    IBOutlet UITableView* resturantTable;
    IBOutlet MKMapView* mainMap;
    IBOutlet UIButton* backBtn;
    IBOutlet UIScrollView* mainScrollView;
    IBOutlet UIView* viewAll;
    
    CLLocationManager* locationManager;
    CLLocationCoordinate2D coord;
    NSMutableArray* cellRestArray;
    NSMutableArray* coordinateArray;
    
    DataLayer* dataLayer;
    DataLayer* currentCell;
    
    DataFeed* dataFeed;

}

@end

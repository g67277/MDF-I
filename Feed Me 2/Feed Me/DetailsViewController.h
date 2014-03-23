//
//  DetailsViewController.h
//  Feed Me
//
//  Created by Nazir Shuqair on 3/17/14.
//  Copyright (c) 2014 Me Time Studios. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
#import "DataLayer.h"

@interface DetailsViewController : UIViewController<MKMapViewDelegate>{
    
    IBOutlet MKMapView* detailMap;
    
    IBOutlet UILabel* restTitle;
    IBOutlet UILabel* number;
    IBOutlet UILabel* address;
    IBOutlet UIImageView* restImg;
}

@property (nonatomic, strong) IBOutlet UIButton* backButton;

@property (nonatomic, strong) DataLayer* currentCell;

@end

//
//  DataLayer.h
//  Feed Me
//
//  Created by Nazir Shuqair on 3/17/14.
//  Copyright (c) 2014 Me Time Studios. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <MapKit/MapKit.h>

@interface DataLayer : NSObject

@property (nonatomic, strong) NSString* lTitle;
@property (nonatomic, strong) NSString* lNumber;
@property (nonatomic, strong) NSString* lAddress;
@property (nonatomic, strong) UIImage* lImg;
@property (nonatomic, strong) UIImage* licon;
@property (nonatomic) CLLocationCoordinate2D lRestCoord;

@end

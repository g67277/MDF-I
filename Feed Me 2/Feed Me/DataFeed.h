//
//  DataFeed.h
//  Feed Me
//
//  Created by Nazir Shuqair on 3/17/14.
//  Copyright (c) 2014 Me Time Studios. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DataLayer.h"

@interface DataFeed : NSObject{
    
    DataLayer *dataLayer;
    
    //NSString* appName;
    //NSString* appDisc;
    
    NSMutableArray* resturantArray;
    NSMutableArray* coordinatesArray;
    
}

- (NSMutableArray*) restArray;
- (NSMutableArray*) coordArray;

@end

//
//  ScheduleData.h
//  YourCup!
//
//  Created by Nazir Shuqair on 3/9/14.
//  Copyright (c) 2014 Me Time Studios. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DataLayerSchedule.h"

@interface ScheduleData : NSObject{
    
    DataLayerSchedule *dataLayer;
    
    NSMutableArray* cellMatchArray;
    
}

- (NSMutableArray*) matchArray;

@end

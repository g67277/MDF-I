//
//  DataLayerSchedule.h
//  YourCup!
//
//  Created by Nazir Shuqair on 3/9/14.
//  Copyright (c) 2014 Me Time Studios. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DataLayerSchedule : NSObject

@property (nonatomic, strong)NSString* cTeam1;
@property (nonatomic, strong)NSString* cTeam2;
@property (nonatomic, strong)NSString* cTime;
@property (nonatomic, strong)NSString* cDate;
@property (nonatomic, strong)NSString* cTeam1Points;
@property (nonatomic, strong)NSString* cTeam2Points;
@property (nonatomic, strong)NSString* cCity;
@property (nonatomic, strong)NSString* cWeather;
@property (nonatomic, strong)UIImage* cTeam1Image;
@property (nonatomic, strong)UIImage* cTeam2Image;
@property (nonatomic, strong)UIImage* cStadiumImg;
@property (nonatomic, strong)UIImage* cCityImg;

@property (nonatomic, strong)NSString* cResearchLabel;
@property (nonatomic, strong)NSString* cLinkLabel;
@property (nonatomic, strong)NSString* cResearchText;
@property (nonatomic, strong)UIImage* cResearchImg;

@property (nonatomic, strong)NSString* cAppName;
@property (nonatomic, strong)NSString* cAppDisk;
@end

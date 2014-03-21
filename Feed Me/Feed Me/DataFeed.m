//
//  DataFeed.m
//  Feed Me
//
//  Created by Nazir Shuqair on 3/17/14.
//  Copyright (c) 2014 Me Time Studios. All rights reserved.
//


#import "DataFeed.h"
#import "DataLayer.h"

@implementation DataFeed

- (NSMutableArray*) restArray{
    
    DataLayer * cell1 = [[DataLayer alloc] init];
    cell1.lTitle = @"Blimpie";
    cell1.lNumber = @"(703) 821-7827";
    cell1.lAddress = @"8260 Greensboro Dr \nMcLean, VA 22102";
    cell1.lImg = [UIImage imageNamed:@"blimpie"];
    cell1.licon = [UIImage imageNamed:@"fastfood"];
    cell1.lRestCoord = CLLocationCoordinate2DMake(38.923899f, -77.229529f);
    
    DataLayer * cell2 = [[DataLayer alloc] init];
    cell2.lTitle = @"Palm Restaurant";
    cell2.lNumber = @"(703) 917-0200";
    cell2.lAddress = @"1750 Tysons Blvd \nMcLean, VA 22102";
    cell2.lImg = [UIImage imageNamed:@"palm"];
    cell2.licon = [UIImage imageNamed:@"fine"];
    cell2.lRestCoord = CLLocationCoordinate2DMake(38.924328f, -77.222321f);
    
    DataLayer * cell3 = [[DataLayer alloc] init];
    cell3.lTitle = @"Alborz Persian Restaurant";
    cell3.lNumber = @"(703) 288-4500";
    cell3.lAddress = @"8417 Old Courthouse Rd \nVienna, VA 22162";
    cell3.lImg = [UIImage imageNamed:@"alborz"];
    cell3.licon = [UIImage imageNamed:@"fine"];
    cell3.lRestCoord = CLLocationCoordinate2DMake(38.915359f, -77.236795f);
    
    DataLayer * cell4 = [[DataLayer alloc] init];
    cell4.lTitle = @"Legal Sea Foods";
    cell4.lNumber = @"(703) 827-8900";
    cell4.lAddress = @"2001 International Dr \nMcLean, VA 22102";
    cell4.lImg = [UIImage imageNamed:@"legal"];
    cell4.licon = [UIImage imageNamed:@"fine"];
    cell4.lRestCoord = CLLocationCoordinate2DMake(38.923953f, -77.225239f);
    
    DataLayer * cell5 = [[DataLayer alloc] init];
    cell5.lTitle = @"Fleming's Prime Steakhouse & Wine Bar";
    cell5.lNumber = @"(703) 442-8384";
    cell5.lAddress = @"1960 Chain Bridge Rd \nMcLean, VA 22102";
    cell5.lImg = [UIImage imageNamed:@"fleming"];
    cell5.licon = [UIImage imageNamed:@"fine"];
    cell5.lRestCoord = CLLocationCoordinate2DMake(38.920595f, -77.227358f);
    
    DataLayer * cell6 = [[DataLayer alloc] init];
    cell6.lTitle = @"Warren Cafe";
    cell6.lNumber = @"(703) 506-0055";
    cell6.lAddress = @"8000 Westpark Dr \nMcLean, VA 22102";
    cell6.lImg = [UIImage imageNamed:@"warren"];
    cell6.licon = [UIImage imageNamed:@"coffee"];
    cell6.lRestCoord = CLLocationCoordinate2DMake(38.928554f, -77.222243f);

    DataLayer * cell7 = [[DataLayer alloc] init];
    cell7.lTitle = @"Luciano Italian Restaurant & Pizzeria";
    cell7.lNumber = @"(703) 893-8488";
    cell7.lAddress = @"7946 Tysons Corner Center \nMcLean, VA 22102";
    cell7.lImg = [UIImage imageNamed:@"luciano"];
    cell7.licon = [UIImage imageNamed:@"pizza"];
    cell7.lRestCoord = CLLocationCoordinate2DMake(38.916962f, -77.221195f);
    
    DataLayer * cell8 = [[DataLayer alloc] init];
    cell8.lTitle = @"Pilin Thai Restaurant";
    cell8.lNumber = @"(703) 556-9191";
    cell8.lAddress = @"8385 Leesburg Pike \nVienna, VA 22182";
    cell8.lImg = [UIImage imageNamed:@"pilin"];
    cell8.licon = [UIImage imageNamed:@"fine"];
    cell8.lRestCoord = CLLocationCoordinate2DMake(38.923899f, -77.229529f);
    
    DataLayer * cell9 = [[DataLayer alloc] init];
    cell9.lTitle = @"Nostos Restaurant";
    cell9.lNumber = @"(703) 760-0690";
    cell9.lAddress = @"8100 Boone Blvd \nVienna, VA 22182";
    cell9.lImg = [UIImage imageNamed:@"nostos"];
    cell9.licon = [UIImage imageNamed:@"fine"];
    cell9.lRestCoord = CLLocationCoordinate2DMake(38.921815f, -77.236354f);
    
    DataLayer * cell10 = [[DataLayer alloc] init];
    cell10.lTitle = @"Gordon Biersch Brewery Restaurant";
    cell10.lNumber = @"(703) 388-5454";
    cell10.lAddress = @"7861 Center St \nMcLean, VA 22102";
    cell10.lImg = [UIImage imageNamed:@"gordon"];
    cell10.licon = [UIImage imageNamed:@"bar"];
    cell10.lRestCoord = CLLocationCoordinate2DMake(38.933819f, -77.178780f);
    
    resturantArray = [[NSMutableArray alloc] initWithObjects:cell1, cell2, cell3, cell4, cell5, cell6, cell7, cell8, cell9, cell10, nil];
    //NSLog(resturantArray);
    
    return resturantArray;
}

- (NSMutableArray*) coordArray{
    
    // Coordinates array for the "view All" button
    
    MKPointAnnotation* point1 = [[MKPointAnnotation alloc] init];
    point1.coordinate = CLLocationCoordinate2DMake(38.923899f, -77.229529f);
    point1.title = @"Blimpie";
    point1.subtitle = @"(703) 821-7827";
    
    MKPointAnnotation* point2 = [[MKPointAnnotation alloc] init];
    point2.coordinate = CLLocationCoordinate2DMake(38.924328f, -77.222321f);
    point2.title = @"Palm Restaurant";
    point2.subtitle = @"(703) 917-0200";
    
    MKPointAnnotation* point3 = [[MKPointAnnotation alloc] init];
    point3.coordinate = CLLocationCoordinate2DMake(38.915359f, -77.236795f);
    point3.title = @"Alborz Persian Restaurant";
    point3.subtitle = @"(703) 288-4500";
    
    MKPointAnnotation* point4 = [[MKPointAnnotation alloc] init];
    point4.coordinate = CLLocationCoordinate2DMake(38.923953f, -77.225239f);
    point4.title = @"Legal Sea Foods";
    point4.subtitle = @"(703) 827-8900";

    MKPointAnnotation* point5 = [[MKPointAnnotation alloc] init];
    point5.coordinate = CLLocationCoordinate2DMake(38.920595f, -77.227358f);
    point5.title = @"Fleming's Prime Steakhouse & Wine Bar";
    point5.subtitle = @"(703) 821-7827";
    
    MKPointAnnotation* point6 = [[MKPointAnnotation alloc] init];
    point6.coordinate = CLLocationCoordinate2DMake(38.928554f, -77.222243f);
    point6.title = @"Warren Cafe";
    point6.subtitle = @"(703) 506-0055";
    
    MKPointAnnotation* point7 = [[MKPointAnnotation alloc] init];
    point7.coordinate = CLLocationCoordinate2DMake(38.916962f, -77.221195f);
    point7.title = @"Luciano Italian Restaurant & Pizzeria";
    point7.subtitle = @"(703) 893-8488";
    
    MKPointAnnotation* point8 = [[MKPointAnnotation alloc] init];
    point8.coordinate = CLLocationCoordinate2DMake(38.923899f, -77.229529f);
    point8.title = @"Pilin Thai Restaurant";
    point8.subtitle = @"(703) 556-9191";
    
    MKPointAnnotation* point9 = [[MKPointAnnotation alloc] init];
    point9.coordinate = CLLocationCoordinate2DMake(38.921815f, -77.236354f);
    point9.title = @"Nostos Restaurant";
    point9.subtitle = @"(703) 760-0690";
    
    MKPointAnnotation* point10 = [[MKPointAnnotation alloc] init];
    point10.coordinate = CLLocationCoordinate2DMake(38.933819f, -77.178780f);
    point10.title = @"Gordon Biersch Brewery Restaurant";
    point10.subtitle = @"(703) 388-5454";
    
    coordinatesArray = [[NSMutableArray alloc] initWithObjects:point1, point2, point3, point4, point5, point6, point7, point8, point8, point9, point10, nil];

    return coordinatesArray;
}


@end

//
//  ViewController.h
//  MDF1-Wk1-Test
//
//  Created by Nazir Shuqair on 3/3/14.
//  Copyright (c) 2014 Me Time Studios. All rights reserved.
//

#import <UIKit/UIKit.h>

@class DataLayer;

@interface ViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>{
    
    DataLayer *dataLayer;
    //IBOutlet UILabel* infoLabel;
    IBOutlet UITableView* mytableView;
    
    NSMutableArray *cellWordArray;
    NSMutableArray *cellDetailArray;
    
}


- (IBAction)onClick:(id)sender;

@end

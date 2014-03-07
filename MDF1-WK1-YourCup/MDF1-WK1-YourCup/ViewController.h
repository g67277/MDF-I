//
//  ViewController.h
//  MDF1-WK1-YourCup
//
//  Created by Nazir Shuqair on 3/5/14.
//  Copyright (c) 2014 Me Time Studios. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DataLayer.h"
#import "UIImage+ImageEffects.h"

@interface ViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>{
    
    DataLayer *dataLayer;
    IBOutlet UITableView* myTableView;
    
    NSMutableArray* cellMatchArray;
    
}

- (IBAction)onClick:(id)sender;
- (IBAction) done:(UIStoryboardSegue*)segue;

@end

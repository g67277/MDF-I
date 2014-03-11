//
//  ViewController.h
//  YourCup!
//
//  Created by Nazir Shuqair on 3/8/14.
//  Copyright (c) 2014 Me Time Studios. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BlurEffect.h"
#import "CustomView.h"

@interface ViewController : UIViewController{
    
    IBOutlet UIView* mainBox;
    IBOutlet UIView* detailText;
    IBOutlet UIImageView* detailPanner;
    
    BlurEffect* blurEffect;
    CustomView* customeView;
    
    
}

@end

//
//  UIWebViewController.h
//  Feed Me 2
//
//  Created by Nazir Shuqair on 3/23/14.
//  Copyright (c) 2014 Me Time Studios. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIWebViewController : UIViewController <UIWebViewDelegate>{
    
    IBOutlet UIWebView* foodWebView;
    IBOutlet UIBarButtonItem* stopReload;
    IBOutlet UIBarButtonItem* backbutton;
    
}


-(IBAction) onClick:(UIBarButtonItem *)sender;

@end

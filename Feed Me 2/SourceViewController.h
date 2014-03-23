//
//  SourceViewController.h
//  Feed Me 2
//
//  Created by Nazir Shuqair on 3/23/14.
//  Copyright (c) 2014 Me Time Studios. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "WebCalls.h"

@interface SourceViewController : UIViewController <NSURLConnectionDataDelegate>{
    
    IBOutlet UIView* tintView;
    IBOutlet UITextView* sourceText;
    IBOutlet UIView* sourceLabel;
    
    WebCalls* webCalls;
    
    NSURLConnection* connection;
    NSMutableData* requestData;
}

@end

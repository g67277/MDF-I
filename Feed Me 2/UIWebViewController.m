//
//  UIWebViewController.m
//  Feed Me 2
//
//  Created by Nazir Shuqair on 3/23/14.
//  Copyright (c) 2014 Me Time Studios. All rights reserved.
//

#import "UIWebViewController.h"

@interface UIWebViewController ()

@end

@implementation UIWebViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

-(IBAction)onClick:(UIBarButtonItem *)sender{
    
    if (sender.tag == 0) {
        if (foodWebView.canGoBack) {
            [foodWebView goBack];
            backbutton.enabled = (foodWebView.canGoBack);
        }
    }else if (sender.tag == 1){
        if (foodWebView.isLoading) {
            [foodWebView stopLoading];
        }
        stopReload.tag = 2;
        stopReload.image = [UIImage imageNamed:@"RefreshButton"];
        
    }else if(sender.tag == 2){
        [foodWebView reload];
    }
    
}

// sets back/reload button tag and title to "X" when web page is loading

- (void)webViewDidStartLoad:(UIWebView *)webView{
    stopReload.tag = 1;
    stopReload.image = [UIImage imageNamed:@"StopButton"];
    
}

// sets back/reload button tag and title to "<-" when web page is done loading

- (void)webViewDidFinishLoad:(UIWebView *)webView{
    stopReload.tag = 2;
    stopReload.image = [UIImage imageNamed:@"RefreshButton"];
    
    backbutton.enabled = (foodWebView.canGoBack);
    
}

- (void)viewDidLoad
{
    webCalls = [[WebCalls alloc] init];
    
    NSURLRequest* request = [webCalls urlRequest];
    
    foodWebView.scalesPageToFit = true;
    [foodWebView loadRequest:request];
    
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

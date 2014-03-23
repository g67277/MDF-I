//
//  SourceViewController.m
//  Feed Me 2
//
//  Created by Nazir Shuqair on 3/23/14.
//  Copyright (c) 2014 Me Time Studios. All rights reserved.
//

#import "SourceViewController.h"

@interface SourceViewController ()

@end

@implementation SourceViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    webCalls = [[WebCalls alloc] init];
    
    // URL Request coming through webcall class
    
    connection = [[NSURLConnection alloc] initWithRequest:[webCalls urlRequest] delegate:self];
    requestData = [NSMutableData data];
    
    
    sourceLabel.frame = CGRectMake(56, 195, 209, 65);
    
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)data{
    
    if (data != nil) {
        [requestData appendData:data];
    }
}

- (void) scrollViewDidScroll:(UIScrollView *)scrollView
{
    CGFloat yPos = -scrollView.contentOffset.y;
    CGRect imgRect = sourceLabel.frame;
    //NSLog(@"%f", yPos);
    if (imgRect.origin.y < 17) {
        
    }else if (yPos < 0){
        imgRect.origin.y = 100 + (yPos/5);
        sourceLabel.frame = imgRect;
    }
}


// Finished receiving and displaying data

- (void)connectionDidFinishLoading:(NSURLConnection *)connection{
    
    NSString* dataString = [[NSString alloc] initWithData:requestData encoding:NSASCIIStringEncoding];
    if (dataString != nil) {
        sourceText.text = [NSString stringWithFormat:@"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n%@", dataString];
    }
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

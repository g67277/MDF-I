//
//  DetailsViewController.m
//  Feed Me
//
//  Created by Nazir Shuqair on 3/17/14.
//  Copyright (c) 2014 Me Time Studios. All rights reserved.
//

#import "DetailsViewController.h"

#define HeaderHeight 297.0f

@interface DetailsViewController ()

@end

@implementation DetailsViewController
@synthesize backButton;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewWillAppear:(BOOL)animated{
    
    restTitle.text = self.currentCell.lTitle;
    number.text = self.currentCell.lNumber;
    address.text = self.currentCell.lAddress;
    restImg.image = self.currentCell.lImg;
    
    
    
}

- (void) viewDidAppear:(BOOL)animated{
    
    
    CLLocationCoordinate2D zoomLocation = self.currentCell.lRestCoord;
    
    MKCoordinateSpan zoomSpan;
    zoomSpan.latitudeDelta = .03f;
    zoomSpan.longitudeDelta = .03f;
    [detailMap setRegion:MKCoordinateRegionMake(zoomLocation, zoomSpan) animated: false];
    
    // Adding the annotation to the detail page map
    
    MKPointAnnotation* point = [[MKPointAnnotation alloc] init];
    point.coordinate = zoomLocation;
    point.title = restTitle.text;
    point.subtitle = number.text;
    [detailMap addAnnotation:point];
    
}

- (void)viewDidLoad
{
    
    // setting the main image frame for the zoom effect method
    restImg.frame = CGRectMake(0, 0, self.view.frame.size.width, HeaderHeight);
    
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

// Creating the bouncy/zoom effect for image when scrolling

- (void) scrollViewDidScroll:(UIScrollView *)scrollView
{
    CGFloat yPos = -scrollView.contentOffset.y;
    CGRect imgRect = restImg.frame;
    //NSLog(@"%f", yPos);
    if (yPos > 0) {
        imgRect.origin.x = scrollView.contentOffset.y/2;
        imgRect.origin.y = scrollView.contentOffset.x/2;
        imgRect.size.width = 320 + yPos;
        imgRect.size.height = HeaderHeight+yPos;
        restImg.frame = imgRect;
    }else if (yPos < 0){
        imgRect.origin.y = yPos/2;
        restImg.frame = imgRect;
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

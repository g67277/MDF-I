//
//  DetailsViewController.m
//  Feed Me
//
//  Created by Nazir Shuqair on 3/17/14.
//  Copyright (c) 2014 Me Time Studios. All rights reserved.
//

#import "DetailsViewController.h"

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
    
    MKPointAnnotation* point = [[MKPointAnnotation alloc] init];
    point.coordinate = zoomLocation;
    point.title = restTitle.text;
    point.subtitle = number.text;
    [detailMap addAnnotation:point];
    
}

- (void)viewDidLoad
{

    //backButton.layer.zPosition = 50;
    //backButton.autoresizingMask = UIViewAutoresizingNone;
    //backButton.frame = btFrame;
    
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

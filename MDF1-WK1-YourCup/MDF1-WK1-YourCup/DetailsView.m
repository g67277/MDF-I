//
//  DetailsView.m
//  MDF1-WK1-YourCup
//
//  Created by Nazir Shuqair on 3/5/14.
//  Copyright (c) 2014 Me Time Studios. All rights reserved.
//

#import "DetailsView.h"

@interface DetailsView ()

@property (weak, nonatomic) IBOutlet UIImageView *backgroundImg2;

@end

@implementation DetailsView

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
    // Modifing the views for the details page
    
    box1.layer.cornerRadius = 1;
    box1.backgroundColor = [UIColor colorWithWhite:1 alpha:.90];
    box1.layer.shadowOpacity = 0.8;
    box1.layer.shadowRadius = 1;
    box1.layer.shadowOffset = CGSizeMake(0.0f, 1.0f);
    
    box2.layer.cornerRadius = 1;
    box2.backgroundColor = [UIColor colorWithWhite:1 alpha:.90];
    box2.layer.shadowOpacity = 0.8;
    box2.layer.shadowRadius = 1;
    box2.layer.shadowOffset = CGSizeMake(0.0f, 1.0f);
    
    box3.layer.cornerRadius = 1;
    box3.backgroundColor = [UIColor colorWithWhite:1 alpha:.90];
    box3.layer.shadowOpacity = 0.8;
    box3.layer.shadowRadius = 1;
    box3.layer.shadowOffset = CGSizeMake(0.0f, 1.0f);
    
    scrollBox.backgroundColor = [UIColor clearColor];
    scrollView.backgroundColor = [UIColor clearColor];
    
    // Title for the details page
    
    NSString* title = @"Match Details";
    
    [self setupBlurredImage];
    
    self.navigationItem.title = title;
    self.navigationController.navigationBar.tintColor = [UIColor blackColor];
    [self.navigationController.navigationBar setTitleTextAttributes:@{NSForegroundColorAttributeName : [UIColor blackColor], NSFontAttributeName : [UIFont fontWithName:@"HelveticaNeue-UltraLight" size:32]}];

    
    
    //  implemented the blur method again, !!! Need to refactor for next project !!!
    [self setupBlurredImage];
    [super viewDidLoad];

}

- (void) viewWillAppear:(BOOL)animated{
    
    // Info for the detail page sent from the main view controller
    
    dTeam1.text = self.currentCell.cTeam1;
    dTeam2.text = self.currentCell.cTeam2;
    dTime.text = self.currentCell.cTime;
    dDate.text = self.currentCell.cDate;
    team1Points.text = self.currentCell.cTeam1Points;
    team2Points.text = self.currentCell.cTeam2Points;
    city.text = self.currentCell.cCity;
    weather.text = self.currentCell.cWeather;
    
    dTeam1Image.image = self.currentCell.cTeam1Image;
    dTeam2Image.image = self.currentCell.cTeam2Image;
    stadiumImg.image = self.currentCell.cStadiumImg;
    
    
}

- (void)setupBlurredImage
{
    UIImage *theImage = [UIImage imageNamed:@"Background2"];
    
    //create our blurred image
    CIContext *context = [CIContext contextWithOptions:nil];
    CIImage *inputImage = [CIImage imageWithCGImage:theImage.CGImage];
    
    //setting up Gaussian Blur (we could use one of many filters offered by Core Image)
    CIFilter *filter = [CIFilter filterWithName:@"CIGaussianBlur"];
    [filter setValue:inputImage forKey:kCIInputImageKey];
    [filter setValue:[NSNumber numberWithFloat:8.0f] forKey:@"inputRadius"];
    CIImage *result = [filter valueForKey:kCIOutputImageKey];
    //CIGaussianBlur has a tendency to shrink the image a little, this ensures it matches up exactly to the bounds of our original image
    CGImageRef cgImage = [context createCGImage:result fromRect:[inputImage extent]];
    
    //add our blurred image to the scrollview
    self.backgroundImg2.image = [UIImage imageWithCGImage:cgImage];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
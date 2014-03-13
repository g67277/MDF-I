//
//  BTGlassScrollViewController.m
//  BTGlassScrollViewExample2
//
//  Created by Byte on 1/23/14.
//  Copyright (c) 2014 Byte. All rights reserved.
//

#import "BTGlassScrollViewController.h"

@interface BTGlassScrollViewController ()

@end

@implementation BTGlassScrollViewController

- (id)initWithImage:(UIImage *)image
{
    self = [super init];
    if (self) {
        _glassScrollView = [[BTGlassScrollView alloc] initWithFrame:self.view.frame BackgroundImage:image viewDistanceFromBottom:120 ];
        [self.view addSubview:_glassScrollView];
    }
    return self;
}


- (void)viewDidLoad
{
    [super viewDidLoad];
    
    
    //preventing weird inset
    [self setAutomaticallyAdjustsScrollViewInsets:YES];

    //background
    self.view.backgroundColor = [UIColor blackColor];
}

- (void)viewWillAppear:(BOOL)animated
{
    [self.navigationController.navigationBar setBarTintColor:[UIColor clearColor]];

}

- (void)willAnimateRotationToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation duration:(NSTimeInterval)duration
{

}

- (void)viewWillLayoutSubviews
{

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end

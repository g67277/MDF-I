//
//  CustomView.m
//  YourCup!
//
//  Created by Nazir Shuqair on 3/9/14.
//  Copyright (c) 2014 Me Time Studios. All rights reserved.
//

#import "CustomView.h"

@implementation CustomView

- (UIView *) uniformView:(UIView*)receivedView color:(UIColor*) color{
    
    UIView* customeView = receivedView;
    
    customeView.layer.cornerRadius = 1;
    customeView.backgroundColor = color;
    customeView.layer.shadowOpacity = 0.8;
    customeView.layer.shadowRadius = 1;
    customeView.layer.shadowOffset = CGSizeMake(0.0f, 1.0f);
    
    return customeView;
    
}

- (UIImageView *) uniformImgBox:(UIImageView*)receivedImg{
    
    UIImageView* customeImgBox = receivedImg;
    
    customeImgBox.layer.shadowOpacity = 0.8;
    customeImgBox.layer.shadowRadius = 1;
    customeImgBox.layer.shadowOffset = CGSizeMake(0.0f, 1.0f);
    
    return customeImgBox;
    
}


@end

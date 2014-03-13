//
//  BTGlassScrollView.h
//  BTGlassScrollViewExample
//
//  Created by Byte on 10/18/13.
//  Copyright (c) 2013 Byte. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UIImage+ImageEffects.h"



//how much the background moves when scroll
#define DEFAULT_MAX_BACKGROUND_MOVEMENT_VERTICAL 50
#define DEFAULT_MAX_BACKGROUND_MOVEMENT_HORIZONTAL 200



@protocol BTGlassScrollViewDelegate;

@interface BTGlassScrollView : UIView <UIScrollViewDelegate>

@property (nonatomic, strong) UIImage *backgroundImage;
@property (nonatomic, assign) CGFloat viewDistanceFromBottom;//how much view is showed up from the bottom
@property (nonatomic, weak) id<BTGlassScrollViewDelegate> delegate;

- (id)initWithFrame:(CGRect)frame BackgroundImage:(UIImage *)backgroundImage viewDistanceFromBottom:(CGFloat)viewDistanceFromBottom;
- (void)scrollHorizontalRatio:(CGFloat)ratio;//from -1 to 1
// change background image on the go
- (void)setBackgroundImage:(UIImage *)backgroundImage overWriteBlur:(BOOL)overWriteBlur animated:(BOOL)animated duration:(NSTimeInterval)interval;
- (void)blurBackground:(BOOL)shouldBlur;
@end


@protocol BTGlassScrollViewDelegate <NSObject>
@optional
//use this to configure your foregroundView when the frame of the whole view changed
- (void)glassScrollView:(BTGlassScrollView *)glassScrollView didChangedToFrame:(CGRect)frame;
//make custom blur without messing with default settings
- (UIImage*)glassScrollView:(BTGlassScrollView *)glassScrollView blurForImage:(UIImage *)image;
@end
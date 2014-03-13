//
//  BTGlassScrollView.m
//  BTGlassScrollViewExample
//
//  Created by Byte on 10/18/13.
//  Copyright (c) 2013 Byte. All rights reserved.
//

#import "BTGlassScrollView.h"

@implementation BTGlassScrollView
{
    UIScrollView *_backgroundScrollView;
    UIView *_constraitView; // for autolayout
    UIImageView *_backgroundImageView;
    UIImageView *_blurredBackgroundImageView;
    
    CALayer *_topShadowLayer;
    CALayer *_botShadowLayer;
    
    UIView *_foregroundContainerView; // for masking
    UIImageView *_topMaskImageView;
}


- (id)initWithFrame:(CGRect)frame BackgroundImage:(UIImage *)backgroundImage viewDistanceFromBottom:(CGFloat)viewDistanceFromBottom
{
    self = [super initWithFrame:frame];
    if (self) {
        //initialize values
        _backgroundImage = backgroundImage;
        _viewDistanceFromBottom = viewDistanceFromBottom;
        
        
        //autoresize
        [self setAutoresizingMask:UIViewAutoresizingFlexibleHeight|UIViewAutoresizingFlexibleWidth];
        
        //create views
        [self createBackgroundView];
        [self createTopShadow];
        [self createBottomShadow];
    }
    return self;
}

#pragma mark - Public Functions

- (void)scrollHorizontalRatio:(CGFloat)ratio
{
    // when the view scroll horizontally, this works the parallax magic
    [_backgroundScrollView setContentOffset:CGPointMake(DEFAULT_MAX_BACKGROUND_MOVEMENT_HORIZONTAL + ratio * DEFAULT_MAX_BACKGROUND_MOVEMENT_HORIZONTAL, _backgroundScrollView.contentOffset.y)];
}



#pragma mark - Setters
- (void)setFrame:(CGRect)frame
{
    [super setFrame:frame];
    //work background
    CGRect bounds = CGRectOffset(frame, -frame.origin.x, -frame.origin.y);
    
    [_backgroundScrollView setFrame:bounds];
    [_backgroundScrollView setContentSize:CGSizeMake(bounds.size.width + 2*DEFAULT_MAX_BACKGROUND_MOVEMENT_HORIZONTAL, self.bounds.size.height + DEFAULT_MAX_BACKGROUND_MOVEMENT_VERTICAL)];
    [_backgroundScrollView setContentOffset:CGPointMake(DEFAULT_MAX_BACKGROUND_MOVEMENT_HORIZONTAL, 0)];
    
    [_constraitView setFrame:CGRectMake(0, 0, bounds.size.width + 2*DEFAULT_MAX_BACKGROUND_MOVEMENT_HORIZONTAL, bounds.size.height + DEFAULT_MAX_BACKGROUND_MOVEMENT_VERTICAL)];
    
    
    
    if (_delegate && [_delegate respondsToSelector:@selector(glassScrollView:didChangedToFrame:)]) {
        [_delegate glassScrollView:self didChangedToFrame:frame];
    }
}

- (void)setTopLayoutGuideLength:(CGFloat)topLayoutGuideLength
{
    if (topLayoutGuideLength == 0) {
        return;
    }
    
    //recreate shadow
    [self createTopShadow];
}


- (void)setViewDistanceFromBottom:(CGFloat)viewDistanceFromBottom
{
    _viewDistanceFromBottom = viewDistanceFromBottom;
    
        //shadows
    [_botShadowLayer setFrame:CGRectOffset(_botShadowLayer.bounds, 0, self.frame.size.height - _viewDistanceFromBottom)];
}

- (void)setBackgroundImage:(UIImage *)backgroundImage overWriteBlur:(BOOL)overWriteBlur animated:(BOOL)animated duration:(NSTimeInterval)interval
{
    _backgroundImage = backgroundImage;
    
    if (animated) {
        UIImageView *previousBackgroundImageView = _backgroundImageView;
        UIImageView *previousBlurredBackgroundImageView = _blurredBackgroundImageView;
        [self createBackgroundImageView];
        
        [_backgroundImageView setAlpha:0];
        [_blurredBackgroundImageView setAlpha:0];
        
        // blur needs to get animated first if the background is blurred
        if (previousBlurredBackgroundImageView.alpha == 1) {
            [UIView animateWithDuration:interval animations:^{
                [_blurredBackgroundImageView setAlpha:previousBlurredBackgroundImageView.alpha];
            } completion:^(BOOL finished) {
                [_backgroundImageView setAlpha:previousBackgroundImageView.alpha];
                [previousBackgroundImageView removeFromSuperview];
                [previousBlurredBackgroundImageView removeFromSuperview];
            }];
        } else {
            [UIView animateWithDuration:interval animations:^{
                [_backgroundImageView setAlpha:previousBackgroundImageView.alpha];
                [_blurredBackgroundImageView setAlpha:previousBlurredBackgroundImageView.alpha];
            } completion:^(BOOL finished) {
                [previousBackgroundImageView removeFromSuperview];
                [previousBlurredBackgroundImageView removeFromSuperview];
            }];
        }
        
        
    } else {
        [_backgroundImageView setImage:_backgroundImage];
            }
}


- (void)blurBackground:(BOOL)shouldBlur
{
    [_blurredBackgroundImageView setAlpha:shouldBlur?1:0];
}

#pragma mark - Views creation
#pragma mark ScrollViews

- (void)createBackgroundView
{
    //background
    _backgroundScrollView = [[UIScrollView alloc] initWithFrame:self.frame];
    [_backgroundScrollView setUserInteractionEnabled:NO];
    [_backgroundScrollView setContentSize:CGSizeMake(self.frame.size.width + 2*DEFAULT_MAX_BACKGROUND_MOVEMENT_HORIZONTAL, self.frame.size.height + DEFAULT_MAX_BACKGROUND_MOVEMENT_VERTICAL)];
    [_backgroundScrollView setContentOffset:CGPointMake(DEFAULT_MAX_BACKGROUND_MOVEMENT_HORIZONTAL, 0)];
    [self addSubview:_backgroundScrollView];
    
    _constraitView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, self.frame.size.width + 2*DEFAULT_MAX_BACKGROUND_MOVEMENT_HORIZONTAL, self.frame.size.height + DEFAULT_MAX_BACKGROUND_MOVEMENT_VERTICAL)];
    [_backgroundScrollView addSubview:_constraitView];
    
    [self createBackgroundImageView];
}

- (void)createBackgroundImageView
{
    _backgroundImageView = [[UIImageView alloc] initWithImage:_backgroundImage];
    [_backgroundImageView setTranslatesAutoresizingMaskIntoConstraints:NO];
    [_backgroundImageView setContentMode:UIViewContentModeScaleAspectFill];
    [_constraitView addSubview:_backgroundImageView];
    
    
    [_constraitView addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|[_backgroundImageView]|" options:0 metrics:0 views:NSDictionaryOfVariableBindings(_backgroundImageView)]];
    [_constraitView addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|[_backgroundImageView]|" options:0 metrics:0 views:NSDictionaryOfVariableBindings(_backgroundImageView)]];
    }



#pragma mark Shadow and Mask Layer
- (CALayer *)createTopMaskWithSize:(CGSize)size startFadeAt:(CGFloat)top endAt:(CGFloat)bottom topColor:(UIColor *)topColor botColor:(UIColor *)botColor;
{
    top = top/size.height;
    bottom = bottom/size.height;
    
    CAGradientLayer *maskLayer = [CAGradientLayer layer];
    maskLayer.anchorPoint = CGPointZero;
    maskLayer.startPoint = CGPointMake(0.5f, 0.0f);
    maskLayer.endPoint = CGPointMake(0.5f, 1.0f);
    
    //an array of colors that dictatates the gradient(s)
    maskLayer.colors = @[(id)topColor.CGColor, (id)topColor.CGColor, (id)botColor.CGColor, (id)botColor.CGColor];
    maskLayer.locations = @[@0.0, @(top), @(bottom), @1.0f];
    maskLayer.frame = CGRectMake(0, 0, size.width, size.height);
    
    return maskLayer;
}

- (void)createTopShadow
{
    //changing the top shadow
    [_topShadowLayer removeFromSuperlayer];
    
}
- (void)createBottomShadow
{
    [_botShadowLayer removeFromSuperlayer];
    _botShadowLayer = [self createTopMaskWithSize:CGSizeMake(self.frame.size.width,_viewDistanceFromBottom) startFadeAt:0 endAt:_viewDistanceFromBottom topColor:[UIColor colorWithWhite:0 alpha:0] botColor:[UIColor colorWithWhite:0 alpha:.8]];
    [_botShadowLayer setFrame:CGRectOffset(_botShadowLayer.bounds, 0, self.frame.size.height - _viewDistanceFromBottom)];
    [self.layer insertSublayer:_botShadowLayer below:_foregroundContainerView.layer];
}


#pragma mark - Button

#pragma mark - Delegate
#pragma mark UIScrollView
- (void)scrollViewDidScroll:(UIScrollView *)scrollView
{
    
    //set background scroll
    [_backgroundScrollView setContentOffset:CGPointMake(DEFAULT_MAX_BACKGROUND_MOVEMENT_HORIZONTAL,DEFAULT_MAX_BACKGROUND_MOVEMENT_VERTICAL)];
    
   
}

- (void)scrollViewWillEndDragging:(UIScrollView *)scrollView withVelocity:(CGPoint)velocity targetContentOffset:(inout CGPoint *)targetContentOffset
{
    
}
@end

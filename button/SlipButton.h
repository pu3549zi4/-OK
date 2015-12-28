//
//  SlipButton.h
//  button
//
//  Created by Xmart on 15/10/26.
//  Copyright © 2015年 Xmart. All rights reserved.
//

#import <UIKit/UIKit.h>
typedef void (^PointChange) (BOOL action);
@interface SlipButton : UIView
{
    CGPoint _startPoint;
    CGPoint _newPoint;
    UIImageView *imageV;
    UIImage *iamge;

}

@property (nonatomic, assign) CGFloat ButtonRadius;
@property (nonatomic, assign) CGFloat ButtonAlpha;
@property (nonatomic, strong) UIColor *ButtonColor;
@property (nonatomic, copy) NSString *ImageName;
@property (nonatomic, assign) CGPoint beginPoint;
@property (nonatomic, assign) CGPoint lastPoint;

@property (nonatomic, copy)PointChange selectedHandle;
@end

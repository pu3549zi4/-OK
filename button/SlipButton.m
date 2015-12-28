//
//  SlipButton.m
//  button
//
//  Created by Xmart on 15/10/26.
//  Copyright © 2015年 Xmart. All rights reserved.
//

#import "SlipButton.h"

@implementation SlipButton

- (void)drawRect:(CGRect)rect {
    self.layer.masksToBounds = YES;
    self.alpha = _ButtonAlpha;
    self.layer.cornerRadius = _ButtonRadius;
    
//    UILabel *textLabel = [[UILabel alloc]initWithFrame:CGRectMake(0, 0, self.bounds.size.width, self.bounds.size.height)];
//    textLabel.textAlignment = NSTextAlignmentCenter;
//    textLabel.backgroundColor = [UIColor greenColor];
//    UIFont *font = [UIFont fontWithName:@"Arial" size:20.0f];
//    textLabel.font = font;
//    textLabel.text = _tittle;
//    [self addSubview:textLabel];
    
    imageV = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, self.bounds.size.width, self.bounds.size.height)];
    _ImageName = @"pause";
    imageV.image = [UIImage imageNamed:_ImageName];
    [self addSubview:imageV];
}
- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    UITouch *touch = [touches anyObject];
    _startPoint = [touch locationInView:self];
}
- (void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event{
    UITouch *touch = [touches anyObject];
    CGPoint endPoint = [touch locationInView:self];
    CGPoint off = CGPointMake(0, 0);
    _newPoint = self.center;
    off.x = endPoint.x - _startPoint.x;
    if (off.x>0) {
        if (self.frame.origin.x < 10 ) {
            if (off.x < 0) {
                off.x = 0;
            }
        }else if (self.frame.origin.x + _ButtonRadius > _lastPoint.x){
            if (off.x > 0) {
                off.x = 0;
            }
        }
        _newPoint.x = self.center.x + off.x;
        _newPoint.y = self.center.y;
        self.center = _newPoint;
    }
}
-(void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event{
    if (_newPoint.x-_beginPoint.x>60) {
        self.selectedHandle(YES);
    }
    _ImageName = @"done";
    imageV.image = [UIImage imageNamed:_ImageName];
    
    self.center = _beginPoint;
    
    /*
     NSString *a = @"1234567890";
     NSString *b = [a stringByReplacingOccurrencesOfString:@"2" withString:@"."];
     b = [b stringByReplacingOccurrencesOfString:@"45" withString:@"."];
     b = [b stringByReplacingOccurrencesOfString:@"789" withString:@"."];
     NSLog(@"%@",b);
     */
    
}

@end

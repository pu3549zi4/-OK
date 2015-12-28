//
//  SlipView.m
//  button
//
//  Created by Xmart on 15/10/26.
//  Copyright © 2015年 Xmart. All rights reserved.
//

#import "SlipView.h"

@implementation SlipView

- (void)drawRect:(CGRect)rect
{
    
    self.layer.masksToBounds = YES;
    self.layer.cornerRadius = _BackViewSize.size.height/4;
    self.backgroundColor = _BackViewColor;
    self.bounds = _BackViewSize;
    self.alpha = _BackViewAlpha;

}

@end
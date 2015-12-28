//
//  SlipView.h
//  button
//
//  Created by Xmart on 15/10/26.
//  Copyright © 2015年 Xmart. All rights reserved.
//

#import <UIKit/UIKit.h>
@interface SlipView : UIView
{
    CGPoint startPoint;
    CGPoint newPoint;
}
@property (nonatomic, assign) CGRect BackViewSize;
@property (nonatomic, assign) CGFloat BackViewAlpha;
@property (nonatomic, strong) UIColor *BackViewColor;
@property (nonatomic, copy) NSString *startTittle;
@property (nonatomic, copy) NSString *endTittle;

@end

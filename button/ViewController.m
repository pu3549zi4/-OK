//
//  ViewController.m
//  button
//
//  Created by Xmart on 15/10/10.
//  Copyright (c) 2015年 Xmart. All rights reserved.
//

#import "ViewController.h"
#import "SlipView.h"
#import "SlipButton.h"
@interface ViewController ()
{
    UIView *btnBackView;
//    UIButton *startBtn;
    BOOL btnIsShow;
    UIButton *upBtn;
//    UIButton *downBtn;
    
    SlipView *a;
    UIImageView *imageV;
    SlipButton *b;
    
    UILabel *aaLab;
    UILabel *abLab;
    UILabel *baLab;
    UILabel *bbLab;
    UILabel *caLab;
    UILabel *cbLab;
    UILabel *daLab;
    UILabel *dbLab;
    UILabel *eaLab;
    UILabel *ebLab;

    UIButton *cBtn;
    UIButton *dBtn;
    UIButton *eBtn;
    
    UIView *firstLine;
    UIView *secdLine;
    UIView *thirLine;
    UIView *fourLine;

}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    btnBackView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, self.view.bounds.size.width, [UIScreen mainScreen].bounds.size.height/4)];
    btnBackView.backgroundColor = [UIColor colorWithRed:202.0/255.0 green:202.0/255.0 blue:202.0/255.0 alpha:0.6];
    [self.view addSubview:btnBackView];
    
    int off_size = btnBackView.bounds.size.height/48;
    
//****  a
    aaLab = [[UILabel alloc]initWithFrame:CGRectMake(0, 0+off_size, btnBackView.bounds.size.width/2, btnBackView.bounds.size.height/2/2)];
    aaLab.text = @"7800";
    aaLab.textColor = [UIColor orangeColor];
    aaLab.font = [UIFont systemFontOfSize:24];
//    aaLab.backgroundColor = [UIColor redColor];
    aaLab.textAlignment = NSTextAlignmentCenter;
    [btnBackView addSubview:aaLab];
    abLab = [[UILabel alloc]initWithFrame:CGRectMake(0, aaLab.bounds.size.height-off_size, btnBackView.bounds.size.width/2, btnBackView.bounds.size.height/2/2)];
    abLab.text = @"距离";
    abLab.font = [UIFont systemFontOfSize:20];
//    abLab.backgroundColor = [UIColor orangeColor];
    abLab.textAlignment = NSTextAlignmentCenter;
    [btnBackView addSubview:abLab];
    
//****  b
    baLab = [[UILabel alloc]initWithFrame:CGRectMake(btnBackView.bounds.size.width/2, 0+off_size, btnBackView.bounds.size.width/2, btnBackView.bounds.size.height/2/2)];
    baLab.text = @"00:00:00";
    baLab.textColor = [UIColor orangeColor];
    baLab.font = [UIFont systemFontOfSize:24];
//    baLab.backgroundColor = [UIColor orangeColor];
    baLab.textAlignment = NSTextAlignmentCenter;
    [btnBackView addSubview:baLab];
    bbLab = [[UILabel alloc]initWithFrame:CGRectMake(btnBackView.bounds.size.width/2, aaLab.bounds.size.height-off_size, btnBackView.bounds.size.width/2, btnBackView.bounds.size.height/2/2)];
    bbLab.text = @"时长";
    bbLab.font = [UIFont systemFontOfSize:20];
//    bbLab.backgroundColor = [UIColor redColor];
    bbLab.textAlignment = NSTextAlignmentCenter;
    [btnBackView addSubview:bbLab];
    
//****  c
    caLab = [[UILabel alloc]initWithFrame:CGRectMake(0, btnBackView.bounds.size.height/2+off_size*1.2, btnBackView.bounds.size.width/3, btnBackView.bounds.size.height/2/2)];
    caLab.text = @"6000";
    caLab.textColor = [UIColor orangeColor];
//    caLab.backgroundColor = [UIColor greenColor];
    caLab.textAlignment = NSTextAlignmentCenter;
    [btnBackView addSubview:caLab];
    cbLab = [[UILabel alloc]initWithFrame:CGRectMake(0, btnBackView.bounds.size.height/4*3-off_size*1.2, btnBackView.bounds.size.width/3, btnBackView.bounds.size.height/2/2)];
    cbLab.text = @"速度";
//    cbLab.backgroundColor = [UIColor yellowColor];
    cbLab.textAlignment = NSTextAlignmentCenter;
    [btnBackView addSubview:cbLab];
    
    cBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    //    aBtn.backgroundColor = [UIColor whiteColor];
    cBtn.frame = CGRectMake(0, btnBackView.bounds.size.height/2, btnBackView.bounds.size.width/3, btnBackView.bounds.size.height/2);
    cBtn.tag = 10001;
    [cBtn addTarget:self action:@selector(changeBtnBackViewStyle:) forControlEvents:UIControlEventTouchUpInside];
    [btnBackView addSubview:cBtn];

//****  d
    daLab = [[UILabel alloc]initWithFrame:CGRectMake(btnBackView.bounds.size.width/3, btnBackView.bounds.size.height/2+off_size*1.2, btnBackView.bounds.size.width/3, btnBackView.bounds.size.height/2/2)];
    daLab.text = @"3000";
    daLab.textColor = [UIColor orangeColor];
//    daLab.backgroundColor = [UIColor yellowColor];
    daLab.textAlignment = NSTextAlignmentCenter;
    [btnBackView addSubview:daLab];
    dbLab = [[UILabel alloc]initWithFrame:CGRectMake(btnBackView.bounds.size.width/3, btnBackView.bounds.size.height/4*3-off_size*1.2, btnBackView.bounds.size.width/3, btnBackView.bounds.size.height/2/2)];
    dbLab.text = @"配速";
//    dbLab.backgroundColor = [UIColor greenColor];
    dbLab.textAlignment = NSTextAlignmentCenter;
    [btnBackView addSubview:dbLab];
    
    dBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    //    aBtn.backgroundColor = [UIColor whiteColor];
    dBtn.frame = CGRectMake(btnBackView.bounds.size.width/3, btnBackView.bounds.size.height/2, btnBackView.bounds.size.width/3, btnBackView.bounds.size.height/2);
    dBtn.tag = 10002;
    [dBtn addTarget:self action:@selector(changeBtnBackViewStyle:) forControlEvents:UIControlEventTouchUpInside];
    [btnBackView addSubview:dBtn];

//****  e
    eaLab = [[UILabel alloc]initWithFrame:CGRectMake(btnBackView.bounds.size.width/3*2, btnBackView.bounds.size.height/2+off_size*1.2, btnBackView.bounds.size.width/3, btnBackView.bounds.size.height/2/2)];
    eaLab.text = @"7800";
    eaLab.textColor = [UIColor orangeColor];
//    eaLab.backgroundColor = [UIColor greenColor];
    eaLab.textAlignment = NSTextAlignmentCenter;
    [btnBackView addSubview:eaLab];
    ebLab = [[UILabel alloc]initWithFrame:CGRectMake(btnBackView.bounds.size.width/3*2, btnBackView.bounds.size.height/4*3-off_size*1.2, btnBackView.bounds.size.width/3, btnBackView.bounds.size.height/2/2)];
    ebLab.text = @"卡路里";
//    ebLab.backgroundColor = [UIColor yellowColor];
    ebLab.textAlignment = NSTextAlignmentCenter;
    [btnBackView addSubview:ebLab];
    
    eBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    //    aBtn.backgroundColor = [UIColor whiteColor];
    eBtn.frame = CGRectMake(btnBackView.bounds.size.width/3*2, btnBackView.bounds.size.height/2, btnBackView.bounds.size.width/3, btnBackView.bounds.size.height/2);
    eBtn.tag = 10003;
    [eBtn addTarget:self action:@selector(changeBtnBackViewStyle:) forControlEvents:UIControlEventTouchUpInside];
    [btnBackView addSubview:eBtn];

    
//********
    [self addLintView];
    
    upBtn = [[UIButton alloc]init];
    upBtn.frame = CGRectMake(btnBackView.bounds.size.width/2-10, btnBackView.bounds.size.height-10, 20, 10);
    [upBtn setBackgroundImage:[UIImage imageNamed:@"up"] forState:UIControlStateNormal];
    [upBtn addTarget:self action:@selector(ChangeViewState:) forControlEvents:UIControlEventTouchUpInside];
    [btnBackView addSubview:upBtn];
    
    a = [[SlipView alloc]init];
    a.BackViewSize = CGRectMake(100, 0, 200, 60);
    a.frame = a.BackViewSize;
    a.backgroundColor = [UIColor whiteColor];
    a.BackViewAlpha = 0.6;
    a.startTittle = @"000";
    a.center = CGPointMake(self.view.center.x, self.view.center.y*1.5);
    [self.view addSubview:a];
    
    for (int i=0; i<5; i++) {
        imageV = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, a.bounds.size.height, a.bounds.size.height)];
        imageV.image = [UIImage imageNamed:@"right"];
        imageV.center = CGPointMake(a.center.x+a.bounds.size.width/9*(i-1),a.center.y);
        [self.view addSubview:imageV];
    }
    
    b = [[SlipButton alloc]initWithFrame:CGRectMake(a.bounds.origin.x+10, a.bounds.origin.y, 50, 50)];
    b.backgroundColor = [UIColor clearColor];
    b.ButtonAlpha = 1;
    b.ButtonRadius = 25;
    b.ImageName = @"pause";
    b.center = CGPointMake(a.center.x-a.bounds.size.width/2+10+25, a.center.y);
    b.beginPoint = CGPointMake(a.center.x-a.bounds.size.width/2+10+25, a.center.y);
    b.lastPoint = CGPointMake(a.center.x-a.bounds.size.width/2+10+25+a.BackViewSize.size.width-20-50-20, a.center.y);
    [self.view addSubview:b];
    
    b.selectedHandle = ^(BOOL action){
        if (action) {
            if (self.view.backgroundColor == [UIColor lightGrayColor]) {
                self.view.backgroundColor = [UIColor cyanColor];
            }else
                self.view.backgroundColor = [UIColor lightGrayColor];
        }
    };
}

-(void)changeBtnBackViewStyle:(UIButton*)sender{
    NSString *aStr = aaLab.text;
    NSString *bStr = abLab.text;
    if (sender.tag == 10001) {
        aaLab.text = baLab.text;
        abLab.text = bbLab.text;
        baLab.text = caLab.text;
        bbLab.text = cbLab.text;
        caLab.text = aStr;
        cbLab.text = bStr;
    }else if (sender.tag == 10002){
        aaLab.text = baLab.text;
        abLab.text = bbLab.text;
        baLab.text = daLab.text;
        bbLab.text = dbLab.text;
        daLab.text = aStr;
        dbLab.text = bStr;

    }else{
        aaLab.text = baLab.text;
        abLab.text = bbLab.text;
        baLab.text = eaLab.text;
        bbLab.text = ebLab.text;
        eaLab.text = aStr;
        ebLab.text = bStr;
    }
}

-(void)addLintView{
    firstLine = [[UIView alloc]initWithFrame:CGRectMake(btnBackView.bounds.size.width/2.0-0.5, 0, 1, btnBackView.bounds.size.height/2)];
    firstLine.backgroundColor = [UIColor lightGrayColor];
    [btnBackView addSubview:firstLine];
    
    secdLine = [[UIView alloc]initWithFrame:CGRectMake(0, btnBackView.bounds.size.height/2.0-0.5, btnBackView.bounds.size.width, 1)];
    secdLine.backgroundColor = [UIColor lightGrayColor];
    [btnBackView addSubview:secdLine];

    thirLine = [[UIView alloc]initWithFrame:CGRectMake(btnBackView.bounds.size.width/3.0-0.5, btnBackView.bounds.size.height/2.0, 1, btnBackView.bounds.size.height/2.0)];
    thirLine.backgroundColor = [UIColor lightGrayColor];
    [btnBackView addSubview:thirLine];

    fourLine = [[UIView alloc]initWithFrame:CGRectMake(btnBackView.bounds.size.width/3.0*2.0-0.5, btnBackView.bounds.size.height/2.0, 1, btnBackView.bounds.size.height/2.0)];
    fourLine.backgroundColor = [UIColor lightGrayColor];
    [btnBackView addSubview:fourLine];

}

- (void)ChangeViewState:(UIButton *)sender{
    if (btnBackView.bounds.size.height == [UIScreen mainScreen].bounds.size.height/4) {
//        NSLog(@"%f--%f",btnBackView.bounds.size.height,self.view.bounds.size.height/4);
        [UIView beginAnimations:nil context:nil]; // 开始动画
        [UIView setAnimationDuration:0.2]; // 动画时长
        btnBackView.frame = CGRectMake(0, 0, self.view.bounds.size.width, [UIScreen mainScreen].bounds.size.height/4/2+10);
        upBtn.frame = CGRectMake(btnBackView.bounds.size.width/2-10, btnBackView.bounds.size.height-10, 20, 10);
        [self showSecondRow];
        [UIView commitAnimations]; // 提交动画
        [upBtn setBackgroundImage:[UIImage imageNamed:@"down"] forState:UIControlStateNormal];
    }else{
//        NSLog(@"%f--%f",btnBackView.bounds.size.height,self.view.bounds.size.height/4);
        [UIView beginAnimations:nil context:nil]; // 开始动画
        [UIView setAnimationDuration:0.2]; // 动画时长
        btnBackView.frame = CGRectMake(0, 0, self.view.bounds.size.width, [UIScreen mainScreen].bounds.size.height/4);
        upBtn.frame = CGRectMake(btnBackView.bounds.size.width/2-10, btnBackView.bounds.size.height-10, 20, 10);
        [UIView commitAnimations]; // 提交动画

        [upBtn setBackgroundImage:[UIImage imageNamed:@"up"] forState:UIControlStateNormal];
        [NSTimer scheduledTimerWithTimeInterval:0.15 target:self selector:@selector(showSecondRow) userInfo:nil repeats:NO];
    }
}
-(void)showSecondRow{
    if ([caLab isHidden]) {
        [caLab setHidden:NO];
        [cbLab setHidden:NO];
        [daLab setHidden:NO];
        [dbLab setHidden:NO];
        [eaLab setHidden:NO];
        [ebLab setHidden:NO];
        [thirLine setHidden:NO];
        [fourLine setHidden:NO];
        [cBtn setEnabled:YES];
        [dBtn setEnabled:YES];
        [eBtn setEnabled:YES];
    }else{
        [caLab setHidden:YES];
        [cbLab setHidden:YES];
        [daLab setHidden:YES];
        [dbLab setHidden:YES];
        [eaLab setHidden:YES];
        [ebLab setHidden:YES];
        [thirLine setHidden:YES];
        [fourLine setHidden:YES];
        [cBtn setEnabled:NO];
        [dBtn setEnabled:NO];
        [eBtn setEnabled:NO];
    }
}
- (void)ChangeViewAndBtnState:(UIButton *)sender{
    if (btnBackView.center.y == self.view.bounds.size.height/2) {
        [UIView beginAnimations:nil context:nil]; // 开始动画
        [UIView setAnimationDuration:0.1]; // 动画时长
        btnBackView.center = CGPointMake(self.view.bounds.size.width/2, self.view.bounds.size.height/3);
        [UIView commitAnimations]; // 提交动画
        [self.view setNeedsDisplay];
    }else{
        [UIView beginAnimations:nil context:nil]; // 开始动画
        [UIView setAnimationDuration:0.1]; // 动画时长
        btnBackView.center = CGPointMake(self.view.bounds.size.width/2, self.view.bounds.size.height/2);
        [UIView commitAnimations]; // 提交动画
        [self.view setNeedsDisplay];
    }
}

- (void)ChangeState:(UIButton *)sender{
    if (sender.center.y == self.view.bounds.size.height/2) {
        [UIView beginAnimations:nil context:nil]; // 开始动画
        [UIView setAnimationDuration:0.1]; // 动画时长
        [UIView commitAnimations]; // 提交动画
        [self.view setNeedsDisplay];
    }else{
        [UIView beginAnimations:nil context:nil]; // 开始动画
        [UIView setAnimationDuration:0.1]; // 动画时长
        [UIView commitAnimations]; // 提交动画
        [self.view setNeedsDisplay];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}

@end

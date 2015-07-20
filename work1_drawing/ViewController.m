//
//  ViewController.m
//  work1_drawing
//
//  Created by qianfeng on 15-7-19.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//
#define SPACING 20

#import "ViewController.h"

@interface ViewController ()
{
    //头
    UIView * _viewGreen;
    
    //左
    UIView * _viewLeft;
    UIView * _viewBlue;
    
    //右
    UIView * _viewRight;
    UIView * _viewYellow;
}
@property(nonatomic,weak)UIView * view1;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title = @"work1_drawing";
    self.view.backgroundColor = [UIColor purpleColor];
    
    UIBarButtonItem * rightButton = [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(rightClick)];
    self.navigationItem.rightBarButtonItem = rightButton;
    
    //创建头部视图
    _viewGreen = [[UIView alloc]initWithFrame:CGRectMake(SPACING, SPACING, self.view.bounds.size.width - 2*SPACING, SPACING*2)];
    _viewGreen.autoresizingMask = UIViewAutoresizingFlexibleWidth;
    _viewGreen.backgroundColor = [UIColor greenColor];
    [self.view addSubview:_viewGreen];
    
    
    //创建左边父视图
    CGFloat viewLeftX = 0;
    CGFloat viewLeftY = CGRectGetMaxY(_viewGreen.frame)+SPACING;
    CGFloat viewLeftW = self.view.frame.size.width*0.5;
    CGFloat viewLeftH = self.view.frame.size.height-viewLeftY;
    _viewLeft = [[UIView alloc]initWithFrame:CGRectMake(viewLeftX, viewLeftY, viewLeftW, viewLeftH)];
    [self.view addSubview:_viewLeft];
    _viewLeft.autoresizingMask = UIViewAutoresizingFlexibleWidth |UIViewAutoresizingFlexibleHeight |UIViewAutoresizingFlexibleRightMargin;
    
    //创建左边子视图
    CGFloat viewBlueX = SPACING;
    CGFloat viewBlueY = 0;
    CGFloat viewBlueW = (self.view.bounds.size.width - SPACING*4)/2;
    CGFloat viewBlueH = (self.view.bounds.size.height - 100);
    _viewBlue = [[UIView alloc]initWithFrame:CGRectMake(viewBlueX, viewBlueY, viewBlueW, viewBlueH)];
    _viewBlue.backgroundColor = [UIColor blueColor];
    [_viewLeft addSubview:_viewBlue];
    _viewBlue.autoresizingMask =  UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight ;
    
    //创建右边父视图
    CGFloat viewRightX = self.view.frame.size.width*0.5;
    CGFloat viewRightY = CGRectGetMaxY(_viewGreen.frame)+SPACING;
    CGFloat viewRightW = self.view.frame.size.width*0.5;
    CGFloat viewRightH = self.view.frame.size.height-viewLeftY;
    _viewRight = [[UIView alloc]initWithFrame:CGRectMake(viewRightX, viewRightY, viewRightW, viewRightH)];
    [self.view addSubview:_viewRight];
    _viewRight.autoresizingMask = UIViewAutoresizingFlexibleWidth|UIViewAutoresizingFlexibleHeight |UIViewAutoresizingFlexibleLeftMargin;
    
    //创建右边子视图
    CGFloat viewYellowX = SPACING;
    CGFloat ViewYellowY = 0;
    CGFloat viewYellowW = viewBlueW;
    CGFloat viewYellowH = viewBlueH;
    _viewYellow = [[UIView alloc]initWithFrame:CGRectMake(viewYellowX, ViewYellowY, viewYellowW, viewYellowH)];
    _viewYellow.backgroundColor = [UIColor yellowColor];
    [_viewRight addSubview:_viewYellow];
    _viewYellow.autoresizingMask = UIViewAutoresizingFlexibleHeight |UIViewAutoresizingFlexibleWidth;
    
    //左内容
    for (int i = 0; i < 10; i++) {
        UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(0, 50 * i + 5,viewBlueW,50)];
        label.text = @"1234567890";
        label.textAlignment = NSTextAlignmentLeft;
        label.textColor = [UIColor redColor];
        [_viewBlue addSubview:label];
        label.autoresizingMask = UIViewAutoresizingFlexibleHeight| UIViewAutoresizingFlexibleWidth |UIViewAutoresizingFlexibleBottomMargin | UIViewAutoresizingFlexibleTopMargin;
    }
    
    //右内容
    for (int i = 0; i < 10; i++) {
        UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(0, 50 * i + 5,viewBlueW,50)];
        label.text = @"0987654321";
        label.textAlignment = NSTextAlignmentLeft;
        label.textColor = [UIColor redColor];
        [_viewYellow addSubview:label];
        label.autoresizingMask = UIViewAutoresizingFlexibleHeight| UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleBottomMargin |UIViewAutoresizingFlexibleTopMargin;
    }
}


- (void)rightClick
{
    NSLog(@"tap right");
}

@end

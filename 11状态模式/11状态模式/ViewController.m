//
//  ViewController.m
//  11状态模式
//
//  Created by yifan on 15/8/14.
//  Copyright (c) 2015年 黄成都. All rights reserved.
//

#import "ViewController.h"
#import "HCDWork.h"
#import "HCDNoonState.h"
#import "HCDAfternoonState.h"
#import "HCDEventState.h"
#import "HCDSleepState.h"
#import "HCDRestState.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    HCDWork *work = [[HCDWork alloc]init];
    [work writeProgram];
    work.state = [[HCDAfternoonState alloc]init];
    [work writeProgram];
    work.state = [[HCDEventState alloc]init];
    [work writeProgram];
    work.state = [[HCDSleepState alloc]init];
    [work writeProgram];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

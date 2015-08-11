//
//  ViewController.m
//  2策略模式
//
//  Created by 黄成都 on 15/8/11.
//  Copyright (c) 2015年 黄成都. All rights reserved.
//

#import "ViewController.h"
#import "HCDCashContext.h"
#import "HCDCashNormal.h"
#import "HCDCashRobate.h"
#import "HCDCaseReturn.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    HCDCashRobate *robate = [[HCDCashRobate alloc]initWithMoneyRebate:0.8];
    HCDCashContext *context = [[HCDCashContext alloc]initWithCashSuper:robate];
    NSLog(@"结果是%f",[context getResult:100]);
    
    HCDCaseReturn *cashReturn = [[HCDCaseReturn alloc]initWithMoneyCondition:300 moneyReturn:100];
    HCDCashContext *contextReturn = [[HCDCashContext alloc]initWithCashSuper:cashReturn];
    NSLog(@"结果是%f",[contextReturn getResult:0]);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

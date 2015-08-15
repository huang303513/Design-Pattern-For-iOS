//
//  ViewController.m
//  18命令模式
//
//  Created by yifan on 15/8/15.
//  Copyright (c) 2015年 黄成都. All rights reserved.
//

#import "ViewController.h"
#import "HCDWaiter.h"
#import "HCDCustomr.h"
#import "HCDWorker.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    HCDWaiter *waiter = [[HCDWaiter alloc]init];
    HCDCustomr *customer = [[HCDCustomr alloc]init];
    [waiter addOrder:[customer pushOrderWithString:@"十串羊肉" type:YES]];
    HCDCustomr *customer1 = [[HCDCustomr alloc]init];
    [waiter addOrder:[customer1 pushOrderWithString:@"二十串鸡肉" type:NO]];
    [waiter notifyOrder];
    
}


@end

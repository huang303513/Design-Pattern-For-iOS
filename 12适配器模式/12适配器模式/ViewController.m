//
//  ViewController.m
//  12适配器模式
//
//  Created by yifan on 15/8/14.
//  Copyright (c) 2015年 黄成都. All rights reserved.
//

#import "ViewController.h"
#import "HCDPlayer.h"
#import "HCDForwards.h"
#import "HCDForeignCenter.h"
#import "HCDTranslator.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    HCDPlayer *forward = [[HCDForwards alloc]initWithName:@"maidi"];
    [forward attack];
    [forward defense];
    HCDPlayer *foreignCenter = [[HCDTranslator alloc]initWithName:@"姚明"];
    [foreignCenter attack];
    [foreignCenter defense];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

//
//  ViewController.m
//  19职责链模式
//
//  Created by yifan on 15/8/15.
//  Copyright (c) 2015年 黄成都. All rights reserved.
//

#import "ViewController.h"
#import "HCDMnager.h"
#import "HCDCommonManager.h"
#import "HCDMajorManager.h"
#import "HCDGenaralManager.h"
#import "HCDReuquest.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    HCDCommonManager *common = [[HCDCommonManager alloc]initWithName:@"猪经理"];
    HCDMajorManager *majon = [[HCDMajorManager alloc]initWithName:@"狗总监"];
    HCDGenaralManager *genaral = [[HCDGenaralManager alloc]initWithName:@"蛤蟆总经理"];
    common.superior = majon;
    majon.superior = genaral;
    
    HCDReuquest *request = [[HCDReuquest alloc]init];
    request.requestType = @"请假";
    request.number = 5;
    [common dealRequest:request];
    
    request.number = 20;
    [common dealRequest:request];
    
    request.number = 220;
    [common dealRequest:request];
    
    request.number = 1200;
    [common dealRequest:request];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

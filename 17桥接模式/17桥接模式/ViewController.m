//
//  ViewController.m
//  17桥接模式
//
//  Created by yifan on 15/8/15.
//  Copyright (c) 2015年 黄成都. All rights reserved.
//

#import "ViewController.h"
#import "HCDPhone.h"
#import "HCDNokiaPhone.h"
#import "HCDSonyPhone.h"
#import "HCDSoftware.h"
#import "HCDGameSoftware.h"
#import "HCDGameNokiaSoftware.h"
#import "HCDAddressListSofeware.h"
typedef id<HCDSoftware> HCDSoftware;
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    HCDPhone *phone = [[HCDNokiaPhone alloc]init];
    HCDSoftware software = [[HCDGameNokiaSoftware alloc]init];
    [phone setSoftWare:software];
    [phone playSoftPhone];
    software = [[HCDAddressListSofeware alloc]init];
    [phone setSoftWare:software];
    [phone playSoftPhone];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

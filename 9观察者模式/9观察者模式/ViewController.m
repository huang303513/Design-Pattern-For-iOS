//
//  ViewController.m
//  9观察者模式
//
//  Created by yifan on 15/8/13.
//  Copyright (c) 2015年 黄成都. All rights reserved.
//

#import "ViewController.h"
#import "HCDObserver.h"
#import "HCDNBAObserver.h"
#import "HCDStockObserver.h"
#import "HCDSecreteSubject.h"

typedef id<HCDObserver> HCDObserver;

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    HCDSubject *subject = [[HCDSecreteSubject alloc]init];
    //添加三个通知对象
    HCDObserver nbaobserver = [[HCDNBAObserver alloc]init];
    [subject attach:nbaobserver];
    HCDObserver stockobserver = [[HCDStockObserver alloc]init];
    [subject attach:stockobserver];
    HCDObserver stockobserver1 = [[HCDStockObserver alloc]init];
    [subject attach:stockobserver1];
    //删除一个通知对象
    [subject detach:stockobserver];
    
    [subject notify];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

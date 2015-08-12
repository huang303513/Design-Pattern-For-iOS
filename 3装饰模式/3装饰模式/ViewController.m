//
//  ViewController.m
//  3装饰模式
//
//  Created by yifan on 15/8/12.
//  Copyright (c) 2015年 黄成都. All rights reserved.
//

#import "ViewController.h"
#import "HCDstractCellPhone.h"
#import "HCDnokiaPhone.h"
#import "HCDdecoratorGPS.h"
#import "HCDdecoratorBluetooth.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    /*
     说明：
     HCDstractCellPhone对应图片中的Component
     HCDnokiaPhone对应图片中的ConcreteComponent
     HCDdecorator对应图片中的Decorator
     HCDdecoratorGPS对应图片中的ConcreteDecoratorA
     HCDdecoratorBluetooth对应图片中的ConcreteDecoratorB
     */
    //核心思想就是通过HCDdecorator各种子类来为HCDnokiaPhone添加各种功能。而不需要改变HCDnokiaPhone。
    //参考地址:http://www.tuicool.com/articles/jyeU3mu
    HCDstractCellPhone *phone = [[HCDnokiaPhone alloc]init];
    NSLog(@"%@",phone.callNumber);
    NSLog(@"%@",phone.sendMessage);
    
    HCDdecoratorGPS *GPS = [[HCDdecoratorGPS alloc]init];
    [GPS setComponents:phone];
    NSLog(@"%@",GPS.callNumber);
    NSLog(@"%@",GPS.sendMessage);
    
    HCDdecoratorBluetooth *bluetooth = [[HCDdecoratorBluetooth alloc] init];
    [bluetooth setComponents:phone];
    NSLog(@"%@",bluetooth.callNumber);
    NSLog(@"%@",bluetooth.sendMessage);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

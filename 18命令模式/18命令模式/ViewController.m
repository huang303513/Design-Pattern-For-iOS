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
    //waiter用于接收各种类型的order。waiter是请求接收者。
    //接收不同customer产生的不同order，并且都存入waiter这个接受者中,type表示不同类型的order。
    HCDWaiter *waiter = [[HCDWaiter alloc]init];
    //顾客一
    HCDCustomr *customer = [[HCDCustomr alloc]init];
    HCDOrder *customerOrder1 = [customer pushOrderWithString:@"顾客一要十串羊肉" type:orderTypeMutton];
     HCDOrder *customerOrder2 = [customer pushOrderWithString:@"顾客一要十串鸭肉" type:orderTypeDuck];
    [waiter addOrder:customerOrder1];
    [waiter addOrder:customerOrder2];
    //顾客二
    HCDCustomr *customer1 = [[HCDCustomr alloc]init];
    HCDOrder *customer1Order1 = [customer1 pushOrderWithString:@"顾客二要二十串鸡肉" type:orderTypeChicken];
        HCDOrder *customer1Order2 = [customer1 pushOrderWithString:@"顾客二要二十串鸭肉" type:orderTypeDuck];
    [waiter addOrder:customer1Order1];
    [waiter addOrder:customer1Order2];
    //顾客取消Order
    [waiter deleteOrder:customer1Order2];
    //waiter发送order，背后有一个HCDWorker这个单列作为行为实现者来处理具体的order。命令接收完毕，开始发送命令。
    [waiter notifyOrder];
    
}


@end

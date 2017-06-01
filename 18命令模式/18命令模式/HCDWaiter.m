//
//  HCDWaiter.m
//  18命令模式
//
//  Created by yifan on 15/8/15.
//  Copyright (c) 2015年 黄成都. All rights reserved.
//

#import "HCDWaiter.h"

@interface HCDWaiter ()
//用于存储命令列表
@property(nonatomic,strong)NSMutableArray *orderList;
@end

@implementation HCDWaiter

-(instancetype)init{
    self = [super init];
    if (self) {
        _orderList = [NSMutableArray array];
    }
    return self;
}
-(void)addOrder:(HCDOrder *)order{
    NSLog(@"添加Order");
    [self.orderList addObject:order];
}
-(void)deleteOrder:(HCDOrder *)order{
    NSLog(@"取消Order");
    [self.orderList removeObject:order];
}
/*
 命令接收完毕，开始执行命令
 */
-(void)notifyOrder{
    NSLog(@"====开始执行Order===");
    for (HCDOrder *order in self.orderList) {
        [order executeOrder];
    }
}
@end

//
//  HCDWaiter.m
//  18命令模式
//
//  Created by yifan on 15/8/15.
//  Copyright (c) 2015年 黄成都. All rights reserved.
//

#import "HCDWaiter.h"

@interface HCDWaiter ()
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
    [self.orderList addObject:order];
}
-(void)deleteOrder:(HCDOrder *)order{
    [self.orderList removeObject:order];
}
-(void)notifyOrder{
    for (HCDOrder *order in self.orderList) {
        [order executeOrder];
    }
}
@end

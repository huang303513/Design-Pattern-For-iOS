//
//  HCDOrder.m
//  18命令模式
//
//  Created by yifan on 15/8/15.
//  Copyright (c) 2015年 黄成都. All rights reserved.
//

#import "HCDOrder.h"

@implementation HCDOrder
-(instancetype)initWithOrderString:(NSString *)orderString{
    self = [super init];
    if (self) {
        _orderString = orderString;
    }
    return self;
}
@end

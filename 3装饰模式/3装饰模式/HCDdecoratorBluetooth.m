//
//  HCDdecoratorBluetooth.m
//  3装饰模式
//
//  Created by yifan on 15/8/12.
//  Copyright (c) 2015年 黄成都. All rights reserved.
//

#import "HCDdecoratorBluetooth.h"

@implementation HCDdecoratorBluetooth
- (NSString *)callNumber
{
    return [NSString stringWithFormat:@"%@ with bluetooth", [super callNumber]];
}

- (NSString *)sendMessage
{
    return [NSString stringWithFormat:@"%@ with bluetooth", [super sendMessage]];
}
@end

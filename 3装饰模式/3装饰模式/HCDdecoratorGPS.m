//
//  HCDdecoratorGPS.m
//  3装饰模式
//
//  Created by yifan on 15/8/12.
//  Copyright (c) 2015年 黄成都. All rights reserved.
//

#import "HCDdecoratorGPS.h"

@implementation HCDdecoratorGPS
- (NSString *)callNumber
{
    return [NSString stringWithFormat:@"%@ with GPS", [super callNumber]];
}

- (NSString *)sendMessage
{
    return [NSString stringWithFormat:@"%@ with GPS", [super sendMessage]];
}

@end

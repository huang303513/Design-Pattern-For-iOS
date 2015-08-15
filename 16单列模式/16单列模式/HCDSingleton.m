//
//  HCDSingleton.m
//  16单列模式
//
//  Created by yifan on 15/8/15.
//  Copyright (c) 2015年 黄成都. All rights reserved.
//

#import "HCDSingleton.h"

@implementation HCDSingleton
+(instancetype)sharedInstance{
    static HCDSingleton *singleton = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        singleton = [[HCDSingleton alloc]init];
    });
    return singleton;
}
@end

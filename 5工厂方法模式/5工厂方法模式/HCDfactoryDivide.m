//
//  HCDfactoryAdd.m
//  5工厂方法模式
//
//  Created by yifan on 15/8/12.
//  Copyright (c) 2015年 黄成都. All rights reserved.
//

#import "HCDfactoryDivide.h"
#import "HCDCalculateDivide.h"
@implementation HCDfactoryDivide
-(id<HCDCalculate>)createFactory{
    return [[HCDCalculateDivide alloc]init];
}
@end

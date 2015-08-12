//
//  HCDfactoryMinus.m
//  5工厂方法模式
//
//  Created by yifan on 15/8/12.
//  Copyright (c) 2015年 黄成都. All rights reserved.
//

#import "HCDfactoryMultiply.h"
#import "HCDCalcuteMultiply.h"
@implementation HCDfactoryMultiply
-(id<HCDCalculate>)createFactory{
    return [[HCDCalcuteMultiply alloc]init];
}
@end

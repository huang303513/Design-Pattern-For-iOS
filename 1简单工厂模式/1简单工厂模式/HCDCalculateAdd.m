//
//  HCDCalculateAdd.m
//  1简单工厂模式
//
//  Created by 黄成都 on 15/8/10.
//  Copyright (c) 2015年 黄成都. All rights reserved.
//

#import "HCDCalculateAdd.h"
@implementation HCDCalculateAdd

/**
 *  下面这两句话会自动生成实现的协议的属性对应的成员变量。如果没有这两句话，则系统会奔溃
 */
@synthesize numberA = _numberA;
@synthesize numberB = _numberB;

-(CGFloat)calculate{
    return self.numberA + self.numberB;
}
@end

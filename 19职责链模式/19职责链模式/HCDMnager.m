//
//  HCDMnager.m
//  19职责链模式
//
//  Created by yifan on 15/8/15.
//  Copyright (c) 2015年 黄成都. All rights reserved.
//

#import "HCDMnager.h"
#import "HCDReuquest.h"
@implementation HCDMnager
-(instancetype)initWithName:(NSString *)name{
    if ([self isMemberOfClass:[HCDMnager class]]) {
        NSAssert(NO, @"基类不能被直接初始化。");
    }
    
    self = [super init];
    if (self) {
        _name = name;
    }
    return self;
}
-(void)dealRequest:(HCDReuquest *)request{
    
}
@end

//
//  HCDCashRobate.m
//  2策略模式
//
//  Created by 黄成都 on 15/8/11.
//  Copyright (c) 2015年 黄成都. All rights reserved.
//

#import "HCDCashRobate.h"

@interface HCDCashRobate ()
@property(nonatomic)CGFloat moneyRebate;
@end

@implementation HCDCashRobate
//@synthesize money = _money;
-(instancetype)initWithMoneyRebate:(CGFloat)moneyRebate{
    self = [super init];
    if (self) {
        _moneyRebate = moneyRebate;
    }
    return self;
}

-(CGFloat)acceptCash:(CGFloat)cash{
    return self.moneyRebate * cash;
}

@end

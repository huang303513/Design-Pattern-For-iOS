//
//  HCDCaseReturn.m
//  2策略模式
//
//  Created by 黄成都 on 15/8/11.
//  Copyright (c) 2015年 黄成都. All rights reserved.
//

#import "HCDCaseReturn.h"

@interface HCDCaseReturn ()
@property(nonatomic)CGFloat moneyCondition;
@property(nonatomic)CGFloat moneyReturn;
@end

@implementation HCDCaseReturn
-(instancetype)initWithMoneyCondition:(CGFloat)moneyCondition moneyReturn:(CGFloat)moneyReturn{
    self = [super init];
    if (self) {
        _moneyCondition = moneyCondition;
        _moneyReturn = moneyReturn;
    }
    return self;
}
-(CGFloat)acceptCash:(CGFloat)cash{
    return self.moneyCondition - self.moneyReturn;
}
@end

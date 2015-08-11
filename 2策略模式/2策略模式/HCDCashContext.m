//
//  HCDCashContext.m
//  2策略模式
//
//  Created by 黄成都 on 15/8/11.
//  Copyright (c) 2015年 黄成都. All rights reserved.
//

#import "HCDCashContext.h"

@interface HCDCashContext()
@property(strong,nonatomic) id<HCDCashBase> cashSuper;
@end

@implementation HCDCashContext
-(instancetype)initWithCashSuper:(id<HCDCashBase>)cashBase{
    self = [super init];
    if (self) {
        self.cashSuper = cashBase;
    }
    return self;
}
-(CGFloat)getResult:(CGFloat)money{
    return [self.cashSuper acceptCash:money];
}
@end

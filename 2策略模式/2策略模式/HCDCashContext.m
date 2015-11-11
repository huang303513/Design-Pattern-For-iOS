//
//  HCDCashContext.m
//  2策略模式
//
//  Created by 黄成都 on 15/8/11.
//  Copyright (c) 2015年 黄成都. All rights reserved.
//

#import "HCDCashContext.h"
#import "HCDCaseReturn.h"
#import "HCDCashNormal.h"
#import "HCDCashRobate.h"
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

-(instancetype)initWithCashType:(HCDCashType)type{
    self = [super init];
    if (self) {
        if (type == CashTypeNormal) {
            self.cashSuper = [[HCDCashNormal alloc]init];
           // self.cashSuper.money = money;
        }else if(type == CashTypeRobate){
            self.cashSuper = [[HCDCashRobate alloc]initWithMoneyRebate:0.8];
           // self.cashSuper.money = money;
        }else if(type == CashTypeReturn){
            self.cashSuper = [[HCDCaseReturn alloc]initWithMoneyReturn:5];
        }
    }
    return self;
}

-(CGFloat)getResult:(CGFloat)money{
    return [self.cashSuper acceptCash:money];
}
@end

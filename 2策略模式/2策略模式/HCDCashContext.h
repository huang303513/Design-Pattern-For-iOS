//
//  HCDCashContext.h
//  2策略模式
//
//  Created by 黄成都 on 15/8/11.
//  Copyright (c) 2015年 黄成都. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "HCDCashBase.h"


typedef NS_ENUM(NSInteger, HCDCashType){
    CashTypeNormal = 0,
    CashTypeRobate,
    CashTypeReturn
};


@interface HCDCashContext : NSObject
-(instancetype)initWithCashSuper:(id<HCDCashBase>)cashBase;
-(instancetype)initWithCashType:(HCDCashType)type;
-(CGFloat)getResult:(CGFloat)money;
@end

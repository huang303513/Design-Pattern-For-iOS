//
//  HCDCaseReturn.h
//  2策略模式
//
//  Created by 黄成都 on 15/8/11.
//  Copyright (c) 2015年 黄成都. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "HCDCashBase.h"
@interface HCDCaseReturn : NSObject<HCDCashBase>
-(instancetype)initWithMoneyReturn:(CGFloat)moneyReturn;
@end

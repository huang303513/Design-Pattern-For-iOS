//
//  HCDWaiter.h
//  18命令模式
//
//  Created by yifan on 15/8/15.
//  Copyright (c) 2015年 黄成都. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "HCDOrder.h"
#import "HCDMuttonOrder.h"
#import "HCDChickenOrder.h"

@interface HCDWaiter : NSObject

-(void)addOrder:(HCDOrder *)order;
-(void)deleteOrder:(HCDOrder *)order;
-(void)notifyOrder;
@end

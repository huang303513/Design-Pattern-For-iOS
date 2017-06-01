//
//  HCDOrder.h
//  18命令模式
//
//  Created by yifan on 15/8/15.
//  Copyright (c) 2015年 黄成都. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "HCDOrder.h"
#import "HCDWorker.h"

@interface HCDOrder : NSObject

@property(nonatomic,copy)NSString *orderString;

-(instancetype)initWithOrderString:(NSString *)orderString;
//执行命令
-(void)executeOrder;
@end

//
//  HCDCustomr.m
//  18命令模式
//
//  Created by yifan on 15/8/15.
//  Copyright (c) 2015年 黄成都. All rights reserved.
//

#import "HCDCustomr.h"
#import "HCDMuttonOrder.h"
#import "HCDChickenOrder.h"
@implementation HCDCustomr

-(HCDOrder *)pushOrderWithString:(NSString *)string type:(BOOL)type{
    HCDOrder *order = nil;
    if (type) {
       order = [[HCDMuttonOrder alloc]initWithOrderString:string];
    }else{
       order = [[HCDChickenOrder alloc]initWithOrderString:string];
    }
    return order;
}
@end

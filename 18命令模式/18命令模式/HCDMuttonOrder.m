//
//  HCDMuttonOrder.m
//  18命令模式
//
//  Created by yifan on 15/8/15.
//  Copyright (c) 2015年 黄成都. All rights reserved.
//

#import "HCDMuttonOrder.h"

@implementation HCDMuttonOrder

-(void)executeOrder{
    NSLog(@"烤羊");
    [[HCDWorker sharedWorker] doMuttonWork:self.orderString];
}
@end

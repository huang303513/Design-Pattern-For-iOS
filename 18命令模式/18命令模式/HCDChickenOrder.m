//
//  HCDChickenOrder.m
//  18命令模式
//
//  Created by yifan on 15/8/15.
//  Copyright (c) 2015年 黄成都. All rights reserved.
//

#import "HCDChickenOrder.h"

@implementation HCDChickenOrder

-(void)executeOrder{
    NSLog(@"烤鸡");
    [[HCDWorker sharedWorker] doChickenWork:self.orderString];
}
@end

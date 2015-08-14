//
//  HCDSleepState.m
//  11状态模式
//
//  Created by yifan on 15/8/14.
//  Copyright (c) 2015年 黄成都. All rights reserved.
//

#import "HCDSleepState.h"
#import "HCDWork.h"
@implementation HCDSleepState
- (void)writeProgram:(HCDWork *)work {
    NSLog(@"当前时间：{%.f}点，不行了，睡着了", work.hour);
}
@end

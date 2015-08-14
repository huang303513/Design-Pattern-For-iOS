//
//  HCDRestState.m
//  11状态模式
//
//  Created by yifan on 15/8/14.
//  Copyright (c) 2015年 黄成都. All rights reserved.
//

#import "HCDRestState.h"
#import "HCDWork.h"
@implementation HCDRestState
- (void)writeProgram:(HCDWork *)work {
    NSLog(@"当前时间：{%.f}点，下班回家了", work.hour);
}
@end

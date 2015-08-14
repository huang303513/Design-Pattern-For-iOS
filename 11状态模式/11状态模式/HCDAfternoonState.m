//
//  HCDAfternoonState.m
//  11状态模式
//
//  Created by yifan on 15/8/14.
//  Copyright (c) 2015年 黄成都. All rights reserved.
//

#import "HCDAfternoonState.h"
#import "HCDEventState.h"
#import "HCDWork.h"
@implementation HCDAfternoonState
-(void)writeProgram:(HCDWork *)work{
    if (work.hour < 17) {
        NSLog(@"当前时间：{%.f}点，下午状态还不错，继续努力", work.hour);
    } else {
        work.state = [[HCDEventState alloc] init];
        [work writeProgram];
    }
}
@end

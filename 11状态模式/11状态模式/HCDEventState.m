//
//  HCDEventState.m
//  11状态模式
//
//  Created by yifan on 15/8/14.
//  Copyright (c) 2015年 黄成都. All rights reserved.
//

#import "HCDEventState.h"
#import "HCDWork.h"
#import "HCDRestState.h"
#import "HCDSleepState.h"
@implementation HCDEventState
-(void)writeProgram:(HCDWork *)work{
    if (work.finished) {
        work.state = [[HCDRestState alloc] init];
        [work writeProgram];
    } else {
        if (work.hour < 21) {
            NSLog(@"当前时间：{%.f}点，加班哦，疲累之极", work.hour);
        } else {
            work.state = [[HCDSleepState alloc] init];
            [work writeProgram];
        }
    }

}
@end

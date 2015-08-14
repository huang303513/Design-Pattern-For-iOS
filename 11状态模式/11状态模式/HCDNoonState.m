//
//  HCDNoonState.m
//  11状态模式
//
//  Created by yifan on 15/8/14.
//  Copyright (c) 2015年 黄成都. All rights reserved.
//

#import "HCDNoonState.h"
#import "HCDAfternoonState.h"
#import "HCDWork.h"
@implementation HCDNoonState
-(void)writeProgram:(HCDWork *)work{
    if (work.hour < 13) {
        NSLog(@"当前时间：{%.f}点，饿了，午饭；犯困，午休", work.hour);
    } else {
        work.state = [[HCDAfternoonState alloc] init];
        [work writeProgram];
    }
}
@end

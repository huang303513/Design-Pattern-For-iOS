//
//  HCDForenoonState.m
//  11状态模式
//
//  Created by yifan on 15/8/14.
//  Copyright (c) 2015年 黄成都. All rights reserved.
//

#import "HCDForenoonState.h"
#import "HCDWork.h"
#import "HCDNoonState.h"
@implementation HCDForenoonState
-(void)writeProgram:(HCDWork *)work{
    if (work.hour < 12) {
         NSLog(@"当前时间：{%.f}点，上午工作，精神百倍", work.hour);
    }else{
        work.state = [[HCDNoonState alloc] init];
        [work writeProgram];
    }
}
@end

//
//  HCDWork.m
//  11状态模式
//
//  Created by yifan on 15/8/14.
//  Copyright (c) 2015年 黄成都. All rights reserved.
//

#import "HCDWork.h"
#import "HCDForenoonState.h"
@implementation HCDWork
-(instancetype)init{
    self = [super init];
    if (self) {
        self.state = [[HCDForenoonState alloc]init];
    }
    return self;
}

-(void)writeProgram{
    [self.state writeProgram:self];
}
@end

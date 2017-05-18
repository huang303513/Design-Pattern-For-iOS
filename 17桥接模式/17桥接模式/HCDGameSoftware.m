//
//  HCDGameSoftware.m
//  17桥接模式
//
//  Created by yifan on 15/8/15.
//  Copyright (c) 2015年 黄成都. All rights reserved.
//

#import "HCDGameSoftware.h"
#import "HCDSoftware.h"

@interface HCDGameSoftware ()<HCDSoftware>

@end

@implementation HCDGameSoftware

-(void)runQQDizhu{
    NSLog(@"GameSoftware开始QQ斗地主");
}

-(void)runQQMajiang{
    NSLog(@"GameSoftware开始QQ麻将");
}
@end

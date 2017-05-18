//
//  HCDPlaySoftWare.m
//  17桥接模式
//
//  Created by huangchengdu on 17/5/18.
//  Copyright © 2017年 黄成都. All rights reserved.
//

#import "HCDPlaySoftWare.h"
#import "HCDSoftware.h"

@interface HCDPlaySoftWare ()<HCDSoftware>

@end

@implementation HCDPlaySoftWare

-(void)runQQ{
    NSLog(@"PlaySoftWare开始打开QQ");
}

-(void)runWeixin{
    NSLog(@"PlaySoftWare开始打开微信");
}

@end

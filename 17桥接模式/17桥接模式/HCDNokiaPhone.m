//
//  HCDNokiaPhone.m
//  17桥接模式
//
//  Created by yifan on 15/8/15.
//  Copyright (c) 2015年 黄成都. All rights reserved.
//

#import "HCDNokiaPhone.h"
#import "HCDGameSoftware.h"
#import "HCDWorkSoftWare.h"
#import "HCDPlaySoftWare.h"


@interface HCDNokiaPhone ()

@end

@implementation HCDNokiaPhone
@synthesize gameSoft = _gameSoft;
@synthesize workSoft = _workSoft;
@synthesize playSoft =_playSoft;


-(instancetype)init{
    self = [super init];
    if (self) {
        _gameSoft = [[HCDGameSoftware alloc]init];
        _workSoft = [[HCDWorkSoftWare alloc]init];
        _playSoft = [[HCDPlaySoftWare alloc]init];
    }
    return self;
}


-(void)work{
    [self.workSoft runXcode];
    [self.workSoft runWord];
}

-(void)play{
    [self.playSoft runWeixin];
    [self.playSoft runQQ];
}

-(void)game{
    [self.gameSoft runQQDizhu];
    [self.gameSoft runQQMajiang];
}

@end

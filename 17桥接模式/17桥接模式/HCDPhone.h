//
//  HCDPhone.h
//  17桥接模式
//
//  Created by yifan on 15/8/15.
//  Copyright (c) 2015年 黄成都. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "HCDSoftware.h"

@class HCDGameSoftware;
@class HCDPlaySoftWare;
@class HCDWorkSoftWare;

@interface HCDPhone : NSObject

@property(nonatomic, strong, readonly)HCDGameSoftware *gameSoft;
@property(nonatomic, strong, readonly)HCDWorkSoftWare *workSoft;
@property(nonatomic, strong, readonly)HCDPlaySoftWare *playSoft;

-(void)work;
-(void)play;
-(void)game;
@end

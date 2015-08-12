//
//  HCDpursuit.h
//  4代理模式
//
//  Created by yifan on 15/8/12.
//  Copyright (c) 2015年 黄成都. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "HCDgiveGift.h"
@class HCDschoolGirl;

@interface HCDpursuit : NSObject<HCDgiveGift>

-(instancetype)initWithSchoolGirl:(HCDschoolGirl *)schoolGirl;
@end

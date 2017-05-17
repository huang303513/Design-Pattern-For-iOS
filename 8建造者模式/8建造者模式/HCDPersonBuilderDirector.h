//
//  HCDPersonBuilderDirector.h
//  8建造者模式
//
//  Created by yifan on 15/8/13.
//  Copyright (c) 2015年 黄成都. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "HCDPresionBuilder.h"

@interface HCDPersonBuilderDirector : NSObject


@property(nonatomic, strong)HCDPresionBuilder builder;

-(void)buildPerson;

@end

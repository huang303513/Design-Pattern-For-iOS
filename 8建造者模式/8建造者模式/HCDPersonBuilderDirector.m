//
//  HCDPersonBuilderDirector.m
//  8建造者模式
//
//  Created by yifan on 15/8/13.
//  Copyright (c) 2015年 黄成都. All rights reserved.
//

#import "HCDPersonBuilderDirector.h"
#import "HCDPersonFatBuilder.h"
#import "HCDPersonThinBuilder.h"


@interface HCDPersonBuilderDirector ()

@property(nonatomic, strong)HCDPresionBuilder builder;
@end

@implementation HCDPersonBuilderDirector


- (HCDPresionBuilder)builderWithType:(BuildOption)type{
    
    switch (type) {
        case BuildFat:
            return [[HCDPersonFatBuilder alloc]init];
            break;
        case BuildThin:
           return [[HCDPersonThinBuilder alloc]init];
    }
}

@end

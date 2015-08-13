//
//  HCDPersonBuilderDirector.m
//  8建造者模式
//
//  Created by yifan on 15/8/13.
//  Copyright (c) 2015年 黄成都. All rights reserved.
//

#import "HCDPersonBuilderDirector.h"

@interface HCDPersonBuilderDirector ()
@property(nonatomic,strong)id<HCDPresionBuilder> builder;
@end

@implementation HCDPersonBuilderDirector
-(instancetype)initWithPersonBuilder:(id<HCDPresionBuilder>)builder{
    self = [super init];
    if (self) {
        _builder = builder;
    }
    return self;
}
-(void)buildPerson{
    [self.builder buildHead];
    [self.builder buildBody];
    [self.builder buildArmLeft];
    [self.builder buildArmRight];
    [self.builder buildLegLeft];
    [self.builder buildLegRight];
}
@end

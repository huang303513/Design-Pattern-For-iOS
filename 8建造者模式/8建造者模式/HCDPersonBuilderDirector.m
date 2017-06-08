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
#import "HCDPerson.h"

@interface HCDPersonBuilderDirector ()

@end

@implementation HCDPersonBuilderDirector


- (HCDPerson *)buildPerson:(HCDPresonBuilder *)builder {
    
    NSLog(@"===============director指挥建造过程====================");
    
    [builder buildHead];
    [builder buildBody];
    [builder buildArmLeft];
    [builder buildArmRight];
    [builder buildLegLeft];
    [builder buildLegRight];
    
    return [builder buildPerson];
}

@end

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

@end

@implementation HCDPersonBuilderDirector


-(void)buildPerson{
    NSLog(@"===============director指挥builder开始建造====================");
    [self.builder buildPerson];
}

@end

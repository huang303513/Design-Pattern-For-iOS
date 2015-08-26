//
//  HCDMediator.m
//  20中介者模式
//
//  Created by 黄成都 on 15/8/26.
//  Copyright (c) 2015年 黄成都. All rights reserved.
//

#import "HCDMediator.h"

@implementation HCDMediator
@synthesize colleagueB = _colleagueB;
@synthesize colleagueA = _colleagueA;

-(instancetype)initWithColleagueA:(HCDAbstractColleague *)colleagueA colleagueB:(HCDAbstractColleague *)colleagueB{
    self = [super init];
    if (self) {
        _colleagueA = colleagueA;
        _colleagueB = colleagueB;
    }
    return self;
}


-(void)setValueToColleagueA:(CGFloat)value{
    self.colleagueA.number = value * 100;
}
-(void)setValueToColleagueB:(CGFloat)value{
    self.colleagueB.number = value * 0.01;
}
@end

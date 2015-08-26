//
//  HCDColleagueB.m
//  20中介者模式
//
//  Created by 黄成都 on 15/8/26.
//  Copyright (c) 2015年 黄成都. All rights reserved.
//

#import "HCDColleagueB.h"
#import "HCDAbstractMediator.h"
@implementation HCDColleagueB
-(void)notice{
    [self.mediator setValueToColleagueA:self.number];
}
@end

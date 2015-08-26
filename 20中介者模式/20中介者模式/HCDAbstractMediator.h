//
//  HCDAbstractMediator.h
//  20中介者模式
//
//  Created by 黄成都 on 15/8/26.
//  Copyright (c) 2015年 黄成都. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "HCDColleagueB.h"
#import "HCDColleagueA.h"
@interface HCDAbstractMediator : NSObject
-(instancetype)initWithColleagueA:(HCDAbstractColleague *)colleagueA colleagueB:(HCDAbstractColleague *)colleagueB;
@property(nonatomic,weak)HCDAbstractColleague *colleagueA;
@property(nonatomic,weak)HCDAbstractColleague *colleagueB;
-(void)setValueToColleagueA:(CGFloat)value;
-(void)setValueToColleagueB:(CGFloat)value;
@end


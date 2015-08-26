//
//  HCDMediatorProtocal.h
//  20中介者模式
//
//  Created by 黄成都 on 15/8/26.
//  Copyright (c) 2015年 黄成都. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "HCDAbstractColleague.h"
#import "HCDColleagueB.h"
#import "HCDColleagueA.h"
@protocol HCDMediatorProtocal <NSObject>
-(instancetype)initWithColleagueA:(HCDColleagueA *)colleagueA colleagueB:(HCDColleagueB *)colleagueB;
-(void)setValueToColleagueA:(CGFloat)value;
-(void)setValueToColleagueB:(CGFloat)value;
@end

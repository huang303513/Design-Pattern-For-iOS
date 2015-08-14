//
//  HCDGameRoll.h
//  13备忘录模式
//
//  Created by 黄成都 on 15/8/14.
//  Copyright (c) 2015年 黄成都. All rights reserved.
//

#import <Foundation/Foundation.h>
@class HCDGameState;
@interface HCDGameRoll : NSObject
@property(nonatomic,assign)NSInteger life;
@property(nonatomic,assign)NSInteger attack;
@property(nonatomic,assign)NSInteger defeat;
-(void)getState;
-(HCDGameState *)saveState;
-(void)fightBoss;
-(void)rebackState:(HCDGameState *)state;
@end

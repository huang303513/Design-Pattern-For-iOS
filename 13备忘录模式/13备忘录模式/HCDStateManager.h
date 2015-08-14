//
//  HCDStateManager.h
//  13备忘录模式
//
//  Created by 黄成都 on 15/8/14.
//  Copyright (c) 2015年 黄成都. All rights reserved.
//

#import <Foundation/Foundation.h>
@class HCDGameState;
@interface HCDStateManager : NSObject
@property(nonatomic,strong)HCDGameState *gameState;
-(instancetype)initWithGameState:(HCDGameState *)gameState;
@end

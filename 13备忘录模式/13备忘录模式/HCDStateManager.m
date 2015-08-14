//
//  HCDStateManager.m
//  13备忘录模式
//
//  Created by 黄成都 on 15/8/14.
//  Copyright (c) 2015年 黄成都. All rights reserved.
//

#import "HCDStateManager.h"

@implementation HCDStateManager
-(instancetype)initWithGameState:(HCDGameState *)gameState{
    self = [super init];
    if (self) {
        _gameState = gameState;
    }
    return self;
}
@end

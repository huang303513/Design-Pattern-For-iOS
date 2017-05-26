//
//  Decorator.m
//  3装饰模式
//
//  Created by huangchengdu on 17/5/25.
//  Copyright © 2017年 黄成都. All rights reserved.
//

#import "Decorator.h"

@implementation Decorator

-(void)operation{
    if (self.component) {
        [self.component operation];
    }
}

@end

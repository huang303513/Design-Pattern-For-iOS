//
//  ConcreteDecoratorA.m
//  3装饰模式
//
//  Created by huangchengdu on 17/5/25.
//  Copyright © 2017年 黄成都. All rights reserved.
//

#import "ConcreteDecoratorA.h"

@implementation ConcreteDecoratorA

-(void)operation{
    [super operation];
    self.addedState = @"New State";
    NSLog(@"ConcreteDecoratorA添加的装饰功能，相当于对Component进行装饰");
}
@end

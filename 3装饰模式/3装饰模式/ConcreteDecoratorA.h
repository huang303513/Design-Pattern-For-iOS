//
//  ConcreteDecoratorA.h
//  3装饰模式
//
//  Created by huangchengdu on 17/5/25.
//  Copyright © 2017年 黄成都. All rights reserved.
//

#import "Decorator.h"

@interface ConcreteDecoratorA : Decorator
//本类独有属性，区别于ConcreteDecoratorB这个装饰者
@property(nonatomic, copy)NSString *addedState;
@end

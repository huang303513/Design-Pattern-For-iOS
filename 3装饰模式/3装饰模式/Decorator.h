//
//  Decorator.h
//  3装饰模式
//
//  Created by huangchengdu on 17/5/25.
//  Copyright © 2017年 黄成都. All rights reserved.
//

#import "Component.h"

@interface Decorator : Component
//装饰对象需要装饰的原始对象
@property(nonatomic, strong)Component *component;
@end

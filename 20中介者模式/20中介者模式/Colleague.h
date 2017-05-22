//
//  Colleague.h
//  20中介者模式
//
//  Created by huangchengdu on 17/5/22.
//  Copyright © 2017年 黄成都. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Mediator;
@interface Colleague : NSObject

@property(nonatomic, strong)Mediator *mediator;

-(instancetype)initWithMediator:(Mediator *)mediator;

-(void)notify:(NSString *)message;
-(void)send:(NSString *)message;
@end

//
//  Mediator.h
//  20中介者模式
//
//  Created by huangchengdu on 17/5/22.
//  Copyright © 2017年 黄成都. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Colleague;

@interface Mediator : NSObject

@property(nonatomic, strong)Colleague *colleague1;
@property(nonatomic, strong)Colleague *colleague2;

-(void)send:(NSString *)message colleague:(Colleague *)colleague;


@end

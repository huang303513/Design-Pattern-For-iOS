//
//  HCDSecreteSubject.m
//  9观察者模式
//
//  Created by yifan on 15/8/13.
//  Copyright (c) 2015年 黄成都. All rights reserved.
//

#import "HCDSecreteSubject.h"
#import "HCDObserver.h"

@implementation HCDSecreteSubject
-(void)notify{
    NSLog(@"秘书通知：老板回来了，大家赶紧撤");
    for (id<HCDObserver> observer in [self getobserverList]) {
        [observer update];
    }
}
@end

//
//  HCDSubject.m
//  9观察者模式
//
//  Created by yifan on 15/8/13.
//  Copyright (c) 2015年 黄成都. All rights reserved.
//

#import "HCDSubject.h"

@interface HCDSubject ()
@property(nonatomic,readwrite,strong)NSMutableArray *observerList;
@end


@implementation HCDSubject
-(instancetype)init{
    self = [super init];
    if (self) {
        _observerList = [NSMutableArray array];
    }
    return self;
}

-(void)attach:(id<HCDObserver>)observer{
    [self.observerList addObject:observer];
}
-(void)detach:(id<HCDObserver>)observer{
    for (id<HCDObserver> currentObserver in [self getobserverList]) {
        if (currentObserver == observer) {
            [self.observerList removeObject:observer];
        }
    }
}
-(NSMutableArray *)getobserverList{
    return [NSMutableArray arrayWithArray:self.observerList];
}
-(void)notify{
    
}
@end

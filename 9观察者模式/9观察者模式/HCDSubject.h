//
//  HCDSubject.h
//  9观察者模式
//
//  Created by yifan on 15/8/13.
//  Copyright (c) 2015年 黄成都. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "HCDObserver.h"
@interface HCDSubject : NSObject
//这里很不合理，不知怎么办
//@property(nonatomic,readwrite,strong)NSMutableArray *observerList;
-(void)attach:(id<HCDObserver>)observer;
-(void)detach:(id<HCDObserver>)observer;
-(void)notify;
-(NSArray *)getobserverList;
@end

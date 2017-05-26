//
//  HCDConcreteVisitor2.m
//  23访问者模式
//
//  Created by 黄成都 on 15/8/27.
//  Copyright (c) 2015年 黄成都. All rights reserved.
//

#import "HCDConcreteVisitor2.h"

@implementation HCDConcreteVisitor2

-(void)visitConcreteElementA:(HCDConcreteElementA *)concreteElementA{
    NSLog(@"男人接收到怒这个visitor============我要叫");
}

-(void)visitConcreteElementB:(HCDConcreteElementB *)concreteElementB{
    NSLog(@"女人接收到怒这个visitor============我要苦");
}
@end

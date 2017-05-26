//
//  HCDConcreteVisitor1.m
//  23访问者模式
//
//  Created by 黄成都 on 15/8/27.
//  Copyright (c) 2015年 黄成都. All rights reserved.
//

#import "HCDConcreteVisitor1.h"


@implementation HCDConcreteVisitor1

-(void)visitConcreteElementA:(HCDConcreteElementA *)concreteElementA{
    NSLog(@"男人接收到喜这个visitor============我要飞");
}

-(void)visitConcreteElementB:(HCDConcreteElementB *)concreteElementB{
    NSLog(@"女人接收到喜这个visitor============我要跳");
}

@end

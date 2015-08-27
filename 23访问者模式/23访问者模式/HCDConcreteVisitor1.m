//
//  HCDConcreteVisitor1.m
//  23访问者模式
//
//  Created by 黄成都 on 15/8/27.
//  Copyright (c) 2015年 黄成都. All rights reserved.
//

#import "HCDConcreteVisitor1.h"
#import "HCDConcreteElementA.h"
@implementation HCDConcreteVisitor1
-(void)VisitConcreteElementA:(HCDConcreteElementA *)concreteElementA{
    NSString *eleName = NSStringFromClass([concreteElementA class]);
    
    NSString *visitorName = NSStringFromClass([self class]);
    
    NSLog(@"%@被%@访问",eleName, visitorName);
}

@end

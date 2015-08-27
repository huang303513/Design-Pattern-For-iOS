//
//  HCDConcreteVisitor2.m
//  23访问者模式
//
//  Created by 黄成都 on 15/8/27.
//  Copyright (c) 2015年 黄成都. All rights reserved.
//

#import "HCDConcreteVisitor2.h"
#import "HCDConcreteElementB.h"
@implementation HCDConcreteVisitor2
-(void)VisitConcreteElementB:(HCDConcreteElementB *)concreteElementB{
    NSString *eleName = NSStringFromClass([concreteElementB class]);
    
    NSString *visitorName = NSStringFromClass([self class]);
    
    NSLog(@"%@被%@访问",eleName, visitorName);
}
@end

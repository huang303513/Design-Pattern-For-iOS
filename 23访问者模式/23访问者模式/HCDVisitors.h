//
//  HCDVisitors.h
//  23访问者模式
//
//  Created by 黄成都 on 15/8/27.
//  Copyright (c) 2015年 黄成都. All rights reserved.
//

#import <Foundation/Foundation.h>
@class HCDConcreteElementA,HCDConcreteElementB;
@interface HCDVisitors : NSObject
-(void)VisitConcreteElementA:(HCDConcreteElementA *)concreteElementA;
-(void)VisitConcreteElementB:(HCDConcreteElementB *)concreteElementB;

@end

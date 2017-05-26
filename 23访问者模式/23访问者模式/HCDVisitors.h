//
//  HCDVisitors.h
//  23访问者模式
//
//  Created by 黄成都 on 15/8/27.
//  Copyright (c) 2015年 黄成都. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "HCDConcreteElementA.h"
#import "HCDConcreteElementB.h"


@interface HCDVisitors : NSObject


-(void)visitConcreteElementA:(HCDConcreteElementA *)concreteElementA;
-(void)visitConcreteElementB:(HCDConcreteElementB *)concreteElementB;

@end

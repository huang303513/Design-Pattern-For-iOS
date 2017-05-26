//
//  HCDElementB.m
//  23访问者模式
//
//  Created by 黄成都 on 15/8/27.
//  Copyright (c) 2015年 黄成都. All rights reserved.
//

#import "HCDConcreteElementB.h"
#import "HCDVisitors.h"


@implementation HCDConcreteElementB

-(void)operationB{
    return;
}
-(void)accept:(HCDVisitors *)visitor{
    [visitor visitConcreteElementB:self];
}
@end

//
//  HCDdecorator.m
//  3装饰模式
//
//  Created by yifan on 15/8/12.
//  Copyright (c) 2015年 黄成都. All rights reserved.
//

#import "HCDdecorator.h"

@implementation HCDdecorator
-(void)setComponents:(HCDstractCellPhone *)component{
    self.abstractCellPhone = component;
}
-(NSString *)callNumber{
    return [self.abstractCellPhone callNumber];
}
-(NSString *)sendMessage{
    return self.abstractCellPhone.sendMessage;
}
@end

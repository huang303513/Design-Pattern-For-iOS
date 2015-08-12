//
//  HCDpursuit.m
//  4代理模式
//
//  Created by yifan on 15/8/12.
//  Copyright (c) 2015年 黄成都. All rights reserved.
//

#import "HCDpursuit.h"
#import "HCDschoolGirl.h"
@interface HCDpursuit ()
@property(nonatomic,strong)HCDschoolGirl *schoolGirl;
@end

@implementation HCDpursuit
-(instancetype)initWithSchoolGirl:(HCDschoolGirl *)schoolGirl{
    self = [super init];
    if (self) {
        _schoolGirl = schoolGirl;
    }
    return self;
}
-(void)giveChocolate{
    NSLog(@"送你巧克力%@",self.schoolGirl.name);
}
-(void)giveDolls{
    NSLog(@"送你洋娃娃%@",self.schoolGirl.name);
}
-(void)giveFlowers{
    NSLog(@"送你玫瑰花%@",self.schoolGirl.name);
}
@end

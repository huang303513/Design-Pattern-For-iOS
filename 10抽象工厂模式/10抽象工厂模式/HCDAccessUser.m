//
//  HCDAccessUser.m
//  10抽象工厂模式
//
//  Created by yifan on 15/8/14.
//  Copyright (c) 2015年 黄成都. All rights reserved.
//

#import "HCDAccessUser.h"

@implementation HCDAccessUser
-(SQLUser *)getUser{
    NSLog(@"新建一个Access的SQLUser对象");
    return [[SQLUser alloc]init];
}
-(void)insertUser:(SQLUser *)user{
    NSLog(@"插入一个Access的SQLUser对象");
}
@end

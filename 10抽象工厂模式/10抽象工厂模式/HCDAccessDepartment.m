//
//  HCDAccessDepartment.m
//  10抽象工厂模式
//
//  Created by yifan on 15/8/14.
//  Copyright (c) 2015年 黄成都. All rights reserved.
//

#import "HCDAccessDepartment.h"

@implementation HCDAccessDepartment
-(SQLDepartment *)getDepartment{
    NSLog(@"新建一个Access的SQLDepartment对象");
    return [[SQLDepartment alloc]init];
}
-(void)insertDepartment:(SQLDepartment *)department{
    NSLog(@"插入一个Access的SQLDepartment对象");
}
@end

//
//  HCDSqlserverDepartment.m
//  10抽象工厂模式
//
//  Created by yifan on 15/8/14.
//  Copyright (c) 2015年 黄成都. All rights reserved.
//

#import "HCDSqlserverDepartment.h"

@implementation HCDSqlserverDepartment
-(SQLDepartment *)getDepartment{
    NSLog(@"新建一个Sqlserver的SQLDepartment对象");
    return [[SQLDepartment alloc]init];
}
-(void)insertDepartment:(SQLDepartment *)department{
    NSLog(@"插入一个Sqlserver的SQLDepartment对象");
}
@end

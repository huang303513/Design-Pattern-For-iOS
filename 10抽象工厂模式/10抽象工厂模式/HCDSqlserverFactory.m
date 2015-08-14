//
//  HCDUserFactory.m
//  10抽象工厂模式
//
//  Created by yifan on 15/8/14.
//  Copyright (c) 2015年 黄成都. All rights reserved.
//

#import "HCDSqlserverFactory.h"
#import "HCDSqlserverUser.h"
#import "HCDSqlserverDepartment.h"
@implementation HCDSqlserverFactory
-(id<HCDUser>)createUser{
    return [[HCDSqlserverUser alloc]init];
}
-(id<HCDDepartment>)createDepartment{
    return [[HCDSqlserverDepartment alloc]init];
}

@end

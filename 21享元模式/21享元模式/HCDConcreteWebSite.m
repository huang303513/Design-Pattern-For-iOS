//
//  HCDConcreteWebSite.m
//  21享元模式
//
//  Created by yifan on 15/8/27.
//  Copyright (c) 2015年 黄成都. All rights reserved.
//

#import "HCDConcreteWebSite.h"

@implementation HCDConcreteWebSite
-(void)use:(HCDUser *)user{
    NSLog(@"网站分类:%@,用户:%@",self.webName,user.name);
}
@end

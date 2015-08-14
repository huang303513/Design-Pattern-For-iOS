//
//  HCDForwards.m
//  12适配器模式
//
//  Created by 黄成都 on 15/8/14.
//  Copyright (c) 2015年 黄成都. All rights reserved.
//

#import "HCDForwards.h"

@implementation HCDForwards
-(void)attack{
    NSLog(@"前锋%@进攻",self.name);
}
-(void)defense{
    NSLog(@"前锋%@防守",self.name);
}
@end

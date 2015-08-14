//
//  HCDForeignCenter.m
//  12适配器模式
//
//  Created by 黄成都 on 15/8/14.
//  Copyright (c) 2015年 黄成都. All rights reserved.
//

#import "HCDForeignCenter.h"

@implementation HCDForeignCenter
-(instancetype)initWithName:(NSString *)name{
    self = [super init];
    if (self) {
        _name = name;
    }
    return self;
}

-(void)foreignAttact{
    NSLog(@"外籍中锋%@进攻",self.name);
}
-(void)foreignDefent{
    NSLog(@"外籍中锋%@防守",self.name);
}
@end

//
//  HCDContext.m
//  22解释器模式
//
//  Created by 黄成都 on 15/8/27.
//  Copyright (c) 2015年 黄成都. All rights reserved.
//

#import "HCDContext.h"

@implementation HCDContext
-(instancetype)initWithInput:(NSString *)input{
    self = [super init];
    if (self) {
        _input = input;
    }
    return self;
}
-(NSString *)output{
    return [NSString stringWithFormat:@"输入的是%@",_input];
}
@end

//
//  HCDTranslator.m
//  12适配器模式
//
//  Created by 黄成都 on 15/8/14.
//  Copyright (c) 2015年 黄成都. All rights reserved.
//

#import "HCDTranslator.h"
#import "HCDForeignCenter.h"

@interface HCDTranslator ()

@end
@implementation HCDTranslator
-(instancetype)initWithName:(NSString *)name{
    self = [super init];
    if (self) {
        _foreigncenter = [[HCDForeignCenter alloc]initWithName:name];
    }
    return self;
}

-(void)defense{
    [self.foreigncenter foreignDefent];
}
-(void)attack{
    [self.foreigncenter foreignAttact];
}
@end

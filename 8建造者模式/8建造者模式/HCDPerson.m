//
//  HCDPerson.m
//  8建造者模式
//
//  Created by Robin on 08/06/2017.
//  Copyright © 2017 黄成都. All rights reserved.
//

#import "HCDPerson.h"
#import <objc/runtime.h>

@implementation HCDPerson

- (void)printInfo {
    
    NSString * description = @"";
    unsigned int count;
    Ivar * list = class_copyIvarList([self class], &count);
    for (unsigned int i = 0; i < count; i++) {
        Ivar ivar = list[i];
        NSString * name = @(ivar_getName(ivar));
        id value = object_getIvar(self, ivar);
        NSString * subInfo = [NSString stringWithFormat:@"%@:%@ ",name,value];
        description = [description stringByAppendingString:subInfo];
    }
    
    NSLog(@"%@",description);
}

@end

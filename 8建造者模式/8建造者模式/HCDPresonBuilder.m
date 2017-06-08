//
//  HCDPresonBuilder.m
//  8建造者模式
//
//  Created by Robin on 08/06/2017.
//  Copyright © 2017 黄成都. All rights reserved.
//

#import "HCDPresonBuilder.h"
#import <objc/runtime.h>

#define MethodNotImplemented()  @throw [NSException exceptionWithName:NSInternalInconsistencyException reason:[NSString stringWithFormat:@"You must override method %@ in subclass %s",NSStringFromSelector(_cmd),class_getName(object_getClass(self))] userInfo:nil]

@implementation HCDPresonBuilder

- (instancetype)init{
    if ([self isMemberOfClass:[HCDPresonBuilder class]]) {
        NSAssert(NO, @"Abstract class can't be inited directly.");
    }
    
    self = [super init];
    if (self) {
        person = [[HCDPerson alloc]init];
    }
    
    return self;
}

- (void)buildHead {
    MethodNotImplemented();
}

- (void)buildBody {
    MethodNotImplemented();
}

- (void)buildArmLeft {
    MethodNotImplemented();
}

- (void)buildArmRight {
    MethodNotImplemented();
}

- (void)buildLegLeft {
    MethodNotImplemented();
}

- (void)buildLegRight {
    MethodNotImplemented();
}

- (HCDPerson *)buildPerson {
    return person;
}

@end

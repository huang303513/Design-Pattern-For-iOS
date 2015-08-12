//
//  HCDproxy.m
//  4代理模式
//
//  Created by yifan on 15/8/12.
//  Copyright (c) 2015年 黄成都. All rights reserved.
//

#import "HCDproxy.h"
#import "HCDschoolGirl.h"
#import "HCDpursuit.h"

@interface HCDproxy ()
@property (strong, nonatomic) HCDpursuit *pursuit;
@end

@implementation HCDproxy
- (instancetype)initWithSchoolGirl:(HCDschoolGirl *)schoolGirl {
    self = [super init];
    if (self) {
        self.pursuit = [[HCDpursuit alloc] initWithSchoolGirl:schoolGirl];
    }
    return self;
}

- (void)giveDolls {
    [self.pursuit giveDolls];
}

- (void)giveFlowers {
    [self.pursuit giveFlowers];
}

- (void)giveChocolate {
    [self.pursuit giveChocolate];
}

@end

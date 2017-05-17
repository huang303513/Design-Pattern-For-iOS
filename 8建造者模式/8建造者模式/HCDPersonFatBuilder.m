//
//  HCDPersonFatBuilder.m
//  8建造者模式
//
//  Created by yifan on 15/8/13.
//  Copyright (c) 2015年 黄成都. All rights reserved.
//

#import "HCDPersonFatBuilder.h"
#import "HCDHeader.h"
#import "HCDBody.h"
#import "HCDLeg.h"
#import "HCDArm.h"


@interface HCDPersonFatBuilder()
@property(nonatomic, strong)HCDHeader *header;
@property(nonatomic, strong)HCDBody *body;
@property(nonatomic, strong)HCDLeg *leg;
@property(nonatomic, strong)HCDArm *arm;
@end
@implementation HCDPersonFatBuilder

-(instancetype)init{
    self = [super init];
    if (self) {
        _header = [[HCDHeader alloc]init];
        _body = [[HCDBody alloc]init];
        _leg = [[HCDLeg alloc]init];
        _arm = [[HCDArm alloc]init];
    }
    return self;
}

-(void)buildPerson{
    [self buildHead];
    [self buildBody];
    [self buildArmLeft];
    [self buildArmRight];
    [self buildLegLeft];
    [self buildLegRight];
}

- (void)buildHead {
    NSLog(@"建造胖子的头部");
    [self.header work];
}

- (void)buildBody {
    NSLog(@"建造胖子的身体");
    [self.body work];
}

- (void)buildArmLeft {
    NSLog(@"建造胖子的左手");
    [self.arm work];
}

- (void)buildArmRight {
    NSLog(@"建造胖子的右手");
    [self.arm work];
}

- (void)buildLegLeft {
    NSLog(@"建造胖子的左脚");
    [self.leg work];
}

- (void)buildLegRight {
    NSLog(@"建造胖子的右脚");
    [self.leg work];
}
@end

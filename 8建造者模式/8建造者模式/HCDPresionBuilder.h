//
//  HCDPresionBuilder.h
//  8建造者模式
//
//  Created by yifan on 15/8/13.
//  Copyright (c) 2015年 黄成都. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef  NS_ENUM(NSUInteger,BuildOption){
    BuildFat,
    BuildThin
};



@protocol HCDPresionBuilder <NSObject>

-(void)buildHead;
-(void)buildBody;
-(void)buildArmLeft;
-(void)buildArmRight;
-(void)buildLegLeft;
-(void)buildLegRight;

- (void)buildPerson;

@end

typedef id<HCDPresionBuilder> HCDPresionBuilder;

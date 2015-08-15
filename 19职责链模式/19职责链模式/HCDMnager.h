//
//  HCDMnager.h
//  19职责链模式
//
//  Created by yifan on 15/8/15.
//  Copyright (c) 2015年 黄成都. All rights reserved.
//

#import <Foundation/Foundation.h>
@class HCDMnager,HCDReuquest;
@interface HCDMnager : NSObject
@property(nonatomic,copy)NSString *name;
@property(nonatomic,strong)HCDMnager *superior;
-(instancetype)initWithName:(NSString *)name;
-(void)dealRequest:(HCDReuquest *)request;
@end

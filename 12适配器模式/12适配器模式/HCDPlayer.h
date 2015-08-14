//
//  HCDPlayer.h
//  12适配器模式
//
//  Created by 黄成都 on 15/8/14.
//  Copyright (c) 2015年 黄成都. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface HCDPlayer : NSObject
@property(nonatomic,copy)NSString *name;
-(void)attack;
-(void)defense;
-(instancetype)initWithName:(NSString *)name;
@end

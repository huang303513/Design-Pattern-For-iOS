//
//  HCDWebSite.h
//  21享元模式
//
//  Created by yifan on 15/8/27.
//  Copyright (c) 2015年 黄成都. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "HCDUser.h"
@protocol HCDWebSite <NSObject>
-(void)use:(HCDUser *)user;
@end

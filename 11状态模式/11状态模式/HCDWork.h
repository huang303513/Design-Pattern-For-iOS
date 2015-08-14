//
//  HCDWork.h
//  11状态模式
//
//  Created by yifan on 15/8/14.
//  Copyright (c) 2015年 黄成都. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "HCDState.h"
@interface HCDWork : NSObject
@property(nonatomic,strong)id<HCDState> state;
@property(nonatomic,assign)CGFloat hour;
@property(nonatomic,assign)BOOL finished;
-(void)writeProgram;
@end

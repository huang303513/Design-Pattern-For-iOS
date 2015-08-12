//
//  HCDfactory.h
//  5工厂方法模式
//
//  Created by yifan on 15/8/12.
//  Copyright (c) 2015年 黄成都. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "HCDCalculate.h"
@interface HCDfactory : NSObject<HCDCalculate>
-(id<HCDCalculate>)createFactory;
@end

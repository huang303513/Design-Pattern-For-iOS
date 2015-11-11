//
//  HCDCalcuteFactory.h
//  1简单工厂模式
//
//  Created by 黄成都 on 15/8/10.
//  Copyright (c) 2015年 黄成都. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "HCDCalculate.h"


@class CommonTool;
@interface HCDCalcuteFactory : NSObject

+(id<HCDCalculate>)createCalcute:(NSString *)calculatetype;
@end

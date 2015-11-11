//
//  HCDCalcuteFactory.m
//  1简单工厂模式
//
//  Created by 黄成都 on 15/8/10.
//  Copyright (c) 2015年 黄成都. All rights reserved.
//

#import "HCDCalcuteFactory.h"
#import "HCDCalculateAdd.h"
#import "HCDCalculateDivide.h"
#import "HCDCalculateMinus.h"
#import "HCDCalcuteMultiply.h"
#import "CommonTool.h"


@implementation HCDCalcuteFactory
+(id<HCDCalculate>)createCalcute:(NSString *)calculatetype{
    
    NSArray *calculateArray = @[@"+",@"-",@"*",@"/"];
    CalculateType calType = [calculateArray indexOfObject:calculatetype];
    
    
    switch (calType) {
        case calcuteTypeAdd:
            return [[HCDCalculateAdd alloc]init];
            break;
        case calcuteTypeMinus:
            return [[HCDCalculateMinus alloc]init];
            break;
        case calcuteTypdeMultipy:
            return [[HCDCalcuteMultiply alloc]init];
        case calcuteTypeDivide:
            return [[HCDCalculateDivide alloc]init];
    }
}
@end

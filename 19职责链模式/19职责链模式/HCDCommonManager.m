//
//  HCDCommonManager.m
//  19职责链模式
//
//  Created by yifan on 15/8/15.
//  Copyright (c) 2015年 黄成都. All rights reserved.
//

#import "HCDCommonManager.h"
#import "HCDReuquest.h"

@implementation HCDCommonManager
-(void)dealRequest:(HCDReuquest *)request{
    if ([request.requestType isEqualToString:@"请假"] && request.number < 10) {
        NSLog(@"%@处理了%@,时间是%d",self.name,request.requestType,request.number);
    }else{
        [self.superior dealRequest:request];
    }
}
@end

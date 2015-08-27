//
//  HCDTerminalExpression.m
//  22解释器模式
//
//  Created by 黄成都 on 15/8/27.
//  Copyright (c) 2015年 黄成都. All rights reserved.
//

#import "HCDTerminalExpression.h"

@implementation HCDTerminalExpression
-(void)interpret:(HCDContext *)context{
    NSLog(@"终端解释器,context == %@",context.output);
}
@end

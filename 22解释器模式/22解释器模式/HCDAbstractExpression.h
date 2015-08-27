//
//  HCDAbstractExpression.h
//  22解释器模式
//
//  Created by 黄成都 on 15/8/27.
//  Copyright (c) 2015年 黄成都. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "HCDContext.h"
@interface HCDAbstractExpression : NSObject
-(void)interpret:(HCDContext *)context;
@end

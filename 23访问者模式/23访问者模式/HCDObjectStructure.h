//
//  HCDObjectStructure.h
//  23访问者模式
//
//  Created by 黄成都 on 15/8/27.
//  Copyright (c) 2015年 黄成都. All rights reserved.
//

#import <Foundation/Foundation.h>

@class HCDElements;
@class HCDVisitors;

@interface HCDObjectStructure : NSObject
{
    NSMutableArray *elements;
}
//添加和删除element
-(void)attach:(HCDElements *)element;
-(void)detach:(HCDElements *)element;
//接受一个visitor
-(void)accept:(HCDVisitors *)visitor;
@end

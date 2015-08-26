//
//  HCDAbstractColleague.h
//  20中介者模式
//
//  Created by 黄成都 on 15/8/26.
//  Copyright (c) 2015年 黄成都. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@class HCDAbstractMediator;
@interface HCDAbstractColleague : NSObject
@property(nonatomic,assign)CGFloat number;
-(void)notice;
@property(nonatomic,strong) HCDAbstractMediator *mediator;
@end

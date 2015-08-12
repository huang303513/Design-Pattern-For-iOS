//
//  HCDgiveGift.h
//  4代理模式
//
//  Created by yifan on 15/8/12.
//  Copyright (c) 2015年 黄成都. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol HCDgiveGift <NSObject>
///  送洋娃娃
- (void)giveDolls;

///  送鲜花
- (void)giveFlowers;

///  送巧克力
- (void)giveChocolate;
@end

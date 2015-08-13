//
//  HCDFound.m
//  7外观模式
//
//  Created by yifan on 15/8/13.
//  Copyright (c) 2015年 黄成都. All rights reserved.
//

#import "HCDFound.h"
#import "HCDstock1.h"
#import "HCDstock2.h"
#import "HCDstock3.h"

@interface HCDFound()
@property(nonatomic,strong)HCDstock1 *stock1;
@property(nonatomic,strong)HCDstock2 *stock2;
@property(nonatomic,strong)HCDstock3 *stock3;
@end

@implementation HCDFound
-(instancetype)init{
    self = [super init];
    if (self) {
        _stock1 = [[HCDstock1 alloc]init];
        _stock2 = [[HCDstock2 alloc]init];
        _stock3 = [[HCDstock3 alloc]init];
    }
    return self;
}

-(void)buyFund{
    [self.stock1 buy];
    [self.stock2 buy];
    [self.stock3 buy];
}
-(void)sellFund{
    [self.stock1 sell];
    [self.stock2 sell];
    [self.stock3 sell];
}
@end

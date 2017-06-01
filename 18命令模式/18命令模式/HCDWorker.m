//
//  HCDWorker.m
//  18命令模式
//
//  Created by yifan on 15/8/15.
//  Copyright (c) 2015年 黄成都. All rights reserved.
//

#import "HCDWorker.h"

@implementation HCDWorker

+(instancetype)sharedWorker{
    static dispatch_once_t once;
    static HCDWorker *sharedWorker = nil;
    dispatch_once(&once, ^{
        sharedWorker = [[HCDWorker alloc]init];
    });
    return sharedWorker;
}

-(void)doMuttonWork:(NSString *)work{
    NSLog(@"厨师考羊肉:%@",work);
}
-(void)doChickenWork:(NSString *)work{
    NSLog(@"厨师考鸡肉:%@",work);
}

-(void)doDuckWork:(NSString *)work{
    NSLog(@"厨师烤鸭肉:%@",work);
}

@end

//
//  HCDWorker.h
//  18命令模式
//
//  Created by yifan on 15/8/15.
//  Copyright (c) 2015年 黄成都. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface HCDWorker : NSObject

+(instancetype)sharedWorker;

-(void)doMuttonWork:(NSString *)work;
-(void)doChickenWork:(NSString *)work;
-(void)doDuckWork:(NSString *)work;
@end

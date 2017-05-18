//
//  HCDSoftware.h
//  17桥接模式
//
//  Created by yifan on 15/8/15.
//  Copyright (c) 2015年 黄成都. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol HCDSoftware <NSObject>
-(void)runQQ;
-(void)runWeixin;
-(void)runWord;
-(void)runXcode;
-(void)runQQDizhu;
-(void)runQQMajiang;
@end

typedef id<HCDSoftware> HCDSoftware;

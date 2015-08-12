//
//  HCDtextPaper.m
//  6模板方法模式
//
//  Created by yifan on 15/8/12.
//  Copyright (c) 2015年 黄成都. All rights reserved.
//

#import "HCDtextPaper.h"

@implementation HCDtextPaper
-(void)testQuestion1{
    NSLog(@"问题：杨过得到，后来给了郭靖，炼成倚天剑、屠龙刀的玄铁可能是[ ]：a.球磨铸铁 b.马口铁 c.高速合金钢 d.碳素纤维");
    NSLog(@"答案：%@", [self answer1]);
}
-(NSString *)answer1{
    return nil;
}
-(void)testQuestion2{
    NSLog(@"问题：杨过、程英、陆无双铲除了情花，造成[ ]：a.使这种植物不再害人 b.使一种珍稀物种灭绝 c.破坏了那个生物圈的生态平衡 d.造成该地区沙漠化");
    NSLog(@"答案：%@", [self answer2]);
}
-(NSString *)answer2{
    return nil;
}
@end

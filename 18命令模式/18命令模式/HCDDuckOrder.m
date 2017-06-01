//
//  HCDDuckOrder.m
//  18命令模式
//
//  Created by huangchengdu on 17/6/1.
//  Copyright © 2017年 黄成都. All rights reserved.
//

#import "HCDDuckOrder.h"

@implementation HCDDuckOrder

-(void)executeOrder{
    NSLog(@"烤鸭");
    [[HCDWorker sharedWorker] doChickenWork:self.orderString];
}
@end

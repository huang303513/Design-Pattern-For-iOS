//
//  ViewController.m
//  24原型模式
//
//  Created by huangchengdu on 17/5/16.
//  Copyright © 2017年 huangchengdu. All rights reserved.
//

#import "ViewController.h"
#import "Verter.h"
#import "Dot.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    Verter *verter1 = [[Verter alloc]initWithLocation:CGPointMake(10, 10)];
    Verter *verter2 = [verter1 copy];
    Verter *verter3 = [verter1 copy];
    Verter *verter4 = [verter1 copy];
    [verter4 setLocation:CGPointMake(50, 50)];
    
    NSLog(@"verter1地址：%p,verter1地址：%p,verter1地址：%p,verter1地址：%p",verter1,verter2,verter3,verter4);
    
    NSLog(@"verter3的Location：%@,verter4的Location:%@",NSStringFromCGPoint(verter3.location),NSStringFromCGPoint(verter4.location));
    
    Dot *dot1 = [[Dot alloc]initWithLocation:CGPointMake(100, 100)];
    [dot1 addMark:verter1];
    [dot1 addMark:verter2];
    [dot1 addMark:verter3];
    [dot1 addMark:verter4];
    
    Dot *dot2 = [dot1 copy];
    
    NSLog(@"=========================================");
    NSLog(@"dot1的mark个数%ld,地址:%p",dot1.count,dot1);
    NSLog(@"dot2的mark个数%ld,地址:%p",dot2.count,dot2);
    [dot1 removeMark:verter1];
    NSLog(@"dot1的mark个数%ld,地址:%p",dot1.count,dot1);
    NSLog(@"dot2的mark个数%ld,地址:%p",dot2.count,dot2);
    
}




@end

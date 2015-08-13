//
//  ViewController.m
//  8建造者模式
//
//  Created by yifan on 15/8/13.
//  Copyright (c) 2015年 黄成都. All rights reserved.
//

#import "ViewController.h"
#import "HCDPersonBuilderDirector.h"
#import "HCDPersonFatBuilder.h"
#import "HCDPersonThinBuilder.h"
#import "HCDPresionBuilder.h"

typedef id<HCDPresionBuilder> HCDPresionBuilder;

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    HCDPresionBuilder builder = [[HCDPersonFatBuilder alloc]init];
    HCDPersonBuilderDirector *fatDirector = [[HCDPersonBuilderDirector alloc]initWithPersonBuilder:builder];
    [fatDirector buildPerson];
    
    
}
@end

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



@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (IBAction)buildFat:(id)sender {
    HCDPersonBuilderDirector *director = [[HCDPersonBuilderDirector alloc]init];
    HCDPresionBuilder builder = [[HCDPersonFatBuilder alloc]init];
    //为director指定builder
    director.builder = builder;
    //director发出构建的指令，builder负责具体的建造过程
    [director buildPerson];
}

- (IBAction)buildThin:(id)sender {
    
    HCDPersonBuilderDirector *director = [[HCDPersonBuilderDirector alloc]init];
    HCDPresionBuilder builder = [[HCDPersonThinBuilder alloc]init];
    //为director指定builder
    director.builder = builder;
    //director发出构建的指令，builder负责具体的建造过程
    [director buildPerson];
}

@end

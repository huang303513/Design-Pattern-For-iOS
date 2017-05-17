//
//  ViewController.m
//  8建造者模式
//
//  Created by yifan on 15/8/13.
//  Copyright (c) 2015年 黄成都. All rights reserved.
//

#import "ViewController.h"
#import "HCDPersonBuilderDirector.h"




@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (IBAction)buildFat:(id)sender {
    HCDPersonBuilderDirector *director = [[HCDPersonBuilderDirector alloc]init];
    HCDPresionBuilder builder = [director builderWithType:BuildFat];
    [builder buildPerson];
}

- (IBAction)buildThin:(id)sender {
    HCDPersonBuilderDirector *director = [[HCDPersonBuilderDirector alloc]init];
    //director发出构建的指令
    HCDPresionBuilder builder = [director builderWithType:BuildThin];
    //builder负责具体的构建
    [builder buildPerson];
}

@end

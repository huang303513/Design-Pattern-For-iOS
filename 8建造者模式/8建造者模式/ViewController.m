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
#import "HCDPerson.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (IBAction)buildFat:(id)sender {
    HCDPersonBuilderDirector *director = [[HCDPersonBuilderDirector alloc]init];
    HCDPresonBuilder * builder = [[HCDPersonFatBuilder alloc]init];
    //director负责建造过程，builder负责具体的构建
    HCDPerson * person = [director buildPerson:builder];
    [person printInfo];
}

- (IBAction)buildThin:(id)sender {
    
    HCDPersonBuilderDirector *director = [[HCDPersonBuilderDirector alloc]init];
    HCDPresonBuilder * builder = [[HCDPersonThinBuilder alloc]init];
    //director负责建造过程，builder负责具体的构建
    HCDPerson * person = [director buildPerson:builder];
    [person printInfo];
}

@end

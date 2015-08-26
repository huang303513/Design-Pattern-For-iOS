//
//  ViewController.m
//  20中介者模式
//
//  Created by yifan on 15/8/15.
//  Copyright (c) 2015年 黄成都. All rights reserved.
//

#import "ViewController.h"
#import "HCDColleagueA.h"
#import "HCDColleagueB.h"
#import "HCDAbstractMediator.h"
#import "HCDMediator.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    HCDAbstractColleague *colleagueA = [[HCDColleagueA alloc]init];
    HCDAbstractColleague *colleagueB = [[HCDColleagueB alloc]init];
    
    HCDAbstractMediator *mediator = [[HCDMediator alloc]initWithColleagueA:colleagueA colleagueB:colleagueB];
    colleagueA.mediator = mediator;
    colleagueB.mediator = mediator;
    
    colleagueA.number = 1450;
    colleagueB.number = 1450;
    [colleagueA notice];
    NSLog(@"%f---%f",colleagueA.number,colleagueB.number);
    colleagueB.number = 123;
    [colleagueB notice];
    NSLog(@"%f---%f",colleagueA.number,colleagueB.number);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

//
//  ViewController.m
//  20中介者模式
//
//  Created by yifan on 15/8/15.
//  Copyright (c) 2015年 黄成都. All rights reserved.
//

#import "ViewController.h"
#import "ConcreteColleague1.h"
#import "ConcreteColleague2.h"
#import "ConcreteMediator.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //初始化一个中介者对象
    ConcreteMediator *mediator = [[ConcreteMediator alloc]init];
    //初始化并且让两个同事有相同的中介者对象
    ConcreteColleague1 *c1 = [[ConcreteColleague1 alloc]initWithMediator:mediator];
    ConcreteColleague2 *c2 = [[ConcreteColleague2 alloc]initWithMediator:mediator];
    //给中介者对象绑定两个要交互的同事对象
    mediator.colleague1 = c1;
    mediator.colleague2 = c2;
    
    [c1 send:@"吃过饭了吗？"];
    [c2 send:@"没有呢，你打算请客？"];
    
}

@end

//
//  ViewController.m
//  3装饰模式
//
//  Created by yifan on 15/8/12.
//  Copyright (c) 2015年 黄成都. All rights reserved.
//

#import "ViewController.h"
#import "ConcreteDecoratorA.h"
#import "ConcreteDecoratorB.h"
#import "ConcreteComponent.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //原始对象
    ConcreteComponent *component = [[ConcreteComponent alloc]init];
    //装饰对象
    ConcreteDecoratorA *decoratorA = [[ConcreteDecoratorA alloc]init];
    ConcreteDecoratorB *decoratorB = [[ConcreteDecoratorB alloc]init];
    
    //装饰对象指定原始对象，后面就是用装饰对象。这样既有原始对象的功能，也有装饰对象的功能。
    decoratorA.component = component;
    decoratorB.component = component;
    
    [decoratorA operation];
    [decoratorB operation];
    
}


@end

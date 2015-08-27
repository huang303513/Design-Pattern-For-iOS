//
//  ViewController.m
//  23访问者模式
//
//  Created by 黄成都 on 15/8/27.
//  Copyright (c) 2015年 黄成都. All rights reserved.
//

#import "ViewController.h"
#import "HCDObjectStructure.h"
#import "HCDConcreteElementB.h"
#import "HCDConcreteElementA.h"
#import "HCDConcreteVisitor1.h"
#import "HCDConcreteVisitor2.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    HCDObjectStructure *o = [[HCDObjectStructure alloc]init];
    
    HCDConcreteElementA *eA = [HCDConcreteElementA new];
    
    HCDConcreteElementB *eB = [HCDConcreteElementB new];
    
    [o attach:eA];
    
    [o attach:eB];
    
    HCDConcreteVisitor1
    *v1 = [HCDConcreteVisitor1 new];
    
    HCDConcreteVisitor2
    *v2 = [HCDConcreteVisitor2 new];
    
    [o accept: v1];
    
    [o accept: v2];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

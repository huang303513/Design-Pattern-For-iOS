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
    /*
     HCDConcreteElementA和HCDConcreteElementB相当于男人女人(固定不变)，当男人女人接收到喜怒哀乐(HCDConcreteVisitor1,HCDConcreteVisitor2)有不同的结果。HCDObjectStructure用于管理他们之间的关系。
     */
    HCDObjectStructure *o = [[HCDObjectStructure alloc]init];
    
    //初始化不同的element对象
    HCDConcreteElementA *eA = [HCDConcreteElementA new];
    HCDConcreteElementB *eB = [HCDConcreteElementB new];
    //加入o对象里面，存在一个数据结构o中。
    [o attach:eA];
    [o attach:eB];
    
    //初始化不同的visitor对象。
    HCDConcreteVisitor1 *v1 = [HCDConcreteVisitor1 new];
    HCDConcreteVisitor2 *v2 = [HCDConcreteVisitor2 new];
    //eA,eB(男人女人)接收到访问者v1(喜)的不同反应。
    [o accept: v1];
    NSLog(@"================================");
    //eA,eB(男人女人)接收到访问者v2(怒)的不同反应。
    [o accept: v2];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

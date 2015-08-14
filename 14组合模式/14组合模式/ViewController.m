//
//  ViewController.m
//  14组合模式
//
//  Created by 黄成都 on 15/8/15.
//  Copyright (c) 2015年 黄成都. All rights reserved.
//

#import "ViewController.h"
#import "HCDConcreteCompany.h"
#import "HCDHRDepartment.h"
#import "HCDFinanceDepartment.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    HCDConcreteCompany *root = [[HCDConcreteCompany alloc]initWithName:@"总公司"];
    [root add:[[HCDHRDepartment alloc]initWithName:@"总公司人力资源部"]];
    [root add:[[HCDFinanceDepartment alloc]initWithName:@"总公司财务部"]];
    
    HCDConcreteCompany *comp = [[HCDConcreteCompany alloc]initWithName:@"上海华东分公司"];
    [comp add:[[HCDHRDepartment alloc]initWithName:@"上海华东分公司人力资源部"]];
    [comp add:[[HCDFinanceDepartment alloc]initWithName:@"上海华东分公司财务部"]];
    [root add:comp];
    
    HCDConcreteCompany *comp1 = [[HCDConcreteCompany alloc]initWithName:@"杭州办事处"];
    [comp1 add:[[HCDHRDepartment alloc]initWithName:@"杭州办事处人力资源部"]];
    [comp1 add:[[HCDFinanceDepartment alloc]initWithName:@"杭州办事处财务部"]];
    [root add:comp1];
    NSLog(@"结构图:----------------------------");
    [root display];
    NSLog(@"职责:---------------------------");
    [root lineofDuty];
}

@end

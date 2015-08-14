//
//  ViewController.m
//  10抽象工厂模式
//
//  Created by yifan on 15/8/14.
//  Copyright (c) 2015年 黄成都. All rights reserved.
//

#import "ViewController.h"
#import "HCDFactory.h"
#import "HCDSqlserverFactory.h"
#import "HCDAccessFactory.h"
#import "HCDDepartment.h"
#import "HCDUser.h"

#import "SQLDepartment.h"
#import "SQLUser.h"
typedef id<HCDFactory> HCDFactory;
typedef id<HCDDepartment> HCDDepartment;
typedef id<HCDUser> HCDUser;
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    HCDFactory factory = [[HCDSqlserverFactory alloc]init];
    HCDDepartment department = [factory createDepartment];
    [department insertDepartment:[[SQLDepartment alloc]init]];
    [department getDepartment];
    
    HCDFactory factory1 = [[HCDAccessFactory alloc]init];
    HCDDepartment department1 = [factory1 createDepartment];
    [department1 insertDepartment:[[SQLDepartment alloc]init]];
    [department1 getDepartment];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

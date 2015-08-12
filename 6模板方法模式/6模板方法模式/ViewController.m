//
//  ViewController.m
//  6模板方法模式
//
//  Created by yifan on 15/8/12.
//  Copyright (c) 2015年 黄成都. All rights reserved.
//

#import "ViewController.h"
#import "HCDtextPaper.h"
#import "HCDtextPaperA.h"
#import "HCDtextPaperB.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    HCDtextPaper *paperA = [[HCDtextPaperA alloc]init];
    [paperA testQuestion1];
    [paperA testQuestion2];
    
    HCDtextPaper *paperB = [[HCDtextPaperB alloc]init];
    [paperB testQuestion1];
    [paperB testQuestion2];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

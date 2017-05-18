//
//  ViewController.m
//  17桥接模式
//
//  Created by yifan on 15/8/15.
//  Copyright (c) 2015年 黄成都. All rights reserved.
//

#import "ViewController.h"
#import "HCDPhone.h"
#import "HCDNokiaPhone.h"




@interface ViewController ()

@property(nonatomic, strong)HCDPhone *phone;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.phone = [[HCDNokiaPhone alloc]init];
    
    
    
}


- (IBAction)play:(id)sender {
    
    [self.phone play];
    NSLog(@"============================");
}

- (IBAction)work:(id)sender {
    
    [self.phone work];
    NSLog(@"============================");

}

- (IBAction)game:(id)sender {
    
    [self.phone game];
    NSLog(@"============================");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

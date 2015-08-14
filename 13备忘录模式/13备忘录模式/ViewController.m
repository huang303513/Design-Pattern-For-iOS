//
//  ViewController.m
//  13备忘录模式
//
//  Created by 黄成都 on 15/8/14.
//  Copyright (c) 2015年 黄成都. All rights reserved.
//

#import "ViewController.h"
#import "HCDGameRoll.h"
#import "HCDGameState.h"
#import "HCDStateManager.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    HCDGameRoll *roll = [[HCDGameRoll alloc]init];
    
    [roll getState];
    HCDGameState *state = [roll saveState];
    HCDStateManager *manager = [[HCDStateManager alloc]initWithGameState:state];
    [roll fightBoss];
    [roll getState];
    [roll rebackState:manager.gameState];
    [roll getState];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

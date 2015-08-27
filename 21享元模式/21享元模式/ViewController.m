//
//  ViewController.m
//  21享元模式
//
//  Created by yifan on 15/8/15.
//  Copyright (c) 2015年 黄成都. All rights reserved.
//

#import "ViewController.h"
#import "HCDWebSiteFactory.h"
#import "HCDWebSite.h"
#import "HCDConcreteWebSite.h"
#import "HCDUser.h"

typedef id<HCDWebSite> HCDWebSiteType;
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    HCDWebSiteFactory *facoty = [[HCDWebSiteFactory alloc]init];
    HCDWebSiteType fx = [facoty getWebSiteCategory:@"产品展示"];
    HCDUser *user = [[HCDUser alloc]init];
    user.name = @"小菜";
    [fx use:user];
    HCDWebSiteType fy = [facoty getWebSiteCategory:@"产品展示"];
    HCDUser *user1 = [[HCDUser alloc]init];
    user1.name = @"大鸟";
    [fy use:user1];
    HCDWebSiteType fz = [facoty getWebSiteCategory:@"博客"];
    HCDUser *user2 = [[HCDUser alloc]init];
    user2.name = @"咪咪";
    [fz use:user2];
    
    NSInteger count = [facoty getWebSiteCount];
    NSLog(@"个数：%d",count);
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

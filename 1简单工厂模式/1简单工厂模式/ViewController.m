//
//  ViewController.m
//  1简单工厂模式
//
//  Created by 黄成都 on 15/8/10.
//  Copyright (c) 2015年 黄成都. All rights reserved.
//

#import "ViewController.h"
#import "CommonTool.h"
#import "HCDCalculate.h"
#import "HCDCalcuteFactory.h"
@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *numberA;
@property (weak, nonatomic) IBOutlet UITextField *countTextField;
@property (weak, nonatomic) IBOutlet UITextField *numberB;
@property (weak, nonatomic) IBOutlet UILabel *resultTextfield;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}


- (IBAction)calculate:(id)sender {
    id<HCDCalculate> cal;
    
    if ([self.countTextField.text isEqualToString:@"+"]) {
        cal =[HCDCalcuteFactory createCalcute:calcuteTypeAdd];
    }else if([self.countTextField.text isEqualToString:@"-"]){
        cal = [HCDCalcuteFactory createCalcute:calcuteTypeMinus];
    }else if ([self.countTextField.text isEqualToString:@"*"]) {
        cal =[HCDCalcuteFactory createCalcute:calcuteTypdeMultipy];
    }else if([self.countTextField.text isEqualToString:@"/"]){
        cal = [HCDCalcuteFactory createCalcute:calcuteTypeDivide];
    }
    cal.numberA = [self.numberA.text floatValue];
    cal.numberB = [self.numberB.text floatValue];
    CGFloat result =  [cal calculate];
    //NSLog(@"结%@")
    self.resultTextfield.text = [@(result) stringValue];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

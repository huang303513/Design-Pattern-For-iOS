//
//  HCDDepartment.m
//  14组合模式
//
//  Created by 黄成都 on 15/8/15.
//  Copyright (c) 2015年 黄成都. All rights reserved.
//

#import "HCDHRDepartment.h"

@implementation HCDHRDepartment
-(instancetype)initWithName:(NSString *)name{
    self = [super init];
    if (self) {
        _name = name;
    }
    return self;
}
-(void)add:(id<HCDCompany>)company{
    
}
-(void)display{
    NSLog(@"%@的HR部门",self.name);
}
-(void)remove:(id<HCDCompany>)company{

}
-(void)lineofDuty{
    NSLog(@"%@,培训员工",self.name);
}
@end

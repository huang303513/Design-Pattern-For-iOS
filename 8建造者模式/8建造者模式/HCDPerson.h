//
//  HCDPerson.h
//  8建造者模式
//
//  Created by Robin on 08/06/2017.
//  Copyright © 2017 黄成都. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface HCDPerson : NSObject

@property (nonatomic, copy) NSString * header;
@property (nonatomic, copy) NSString * body;
@property (nonatomic, copy) NSString * leftArm;
@property (nonatomic, copy) NSString * rightArm;
@property (nonatomic, copy) NSString * leftLeg;
@property (nonatomic, copy) NSString * rightLeg;

- (void)printInfo;
@end

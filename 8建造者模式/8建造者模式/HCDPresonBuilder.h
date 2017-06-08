//
//  HCDPresonBuilder.h
//  8建造者模式
//
//  Created by Robin on 08/06/2017.
//  Copyright © 2017 黄成都. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "HCDPerson.h"

@interface HCDPresonBuilder : NSObject {
    HCDPerson * person;
}

- (void)buildHead;
- (void)buildBody;
- (void)buildArmLeft;
- (void)buildArmRight;
- (void)buildLegLeft;
- (void)buildLegRight;

- (HCDPerson *)buildPerson;

@end

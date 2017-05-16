//
//  Verter.m
//  24原型模式
//
//  Created by huangchengdu on 17/5/16.
//  Copyright © 2017年 huangchengdu. All rights reserved.
//

#import "Verter.h"
#import "Mark.h"


@interface Verter ()

@end

@implementation Verter
@synthesize color = _color;
@synthesize size = _size;
@synthesize location = _location;
@synthesize count = _count;
@synthesize lastChild = _lastChild;

-(id)initWithLocation:(CGPoint)location{
    self = [super init];
    if (self) {
        _location = location;
    }
    return self;
}

-(void)addMark:(id<Mark>)mark{
    
}

-(void)removeMark:(id<Mark>)mark{

}

-(id<Mark>)childMarkAtIndex:(NSUInteger)index{

    return nil;
}

-(id)copyWithZone:(NSZone *)zone{
    Verter *verter = [[[self class] alloc] initWithLocation:_location];
    return verter;
}

@end

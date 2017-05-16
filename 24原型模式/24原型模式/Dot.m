//
//  Dot.m
//  24原型模式
//
//  Created by huangchengdu on 17/5/16.
//  Copyright © 2017年 huangchengdu. All rights reserved.
//

#import "Dot.h"

@interface Dot ()
@property(nonatomic,copy)NSMutableArray *children;
@end

@implementation Dot
@synthesize color = _color;
@synthesize size = _size;
@synthesize location = _location;
@synthesize count = _count;
@synthesize lastChild = _lastChild;


-(id)initWithLocation:(CGPoint)location{
    self = [super init];
    if (self) {
        _location = location;
        _children = [NSMutableArray arrayWithCapacity:5];
    }
    return self;
}

-(NSUInteger)count{
    return [_children count];
}

-(void)addMark:(id<Mark>)mark{
    [self.children addObject:mark];
}

-(void)removeMark:(id<Mark>)mark{
    if ([self.children containsObject:mark]) {
        [self.children removeObject:mark];
    }
}

-(id<Mark>)childMarkAtIndex:(NSUInteger)index{
    if (self.children.count <= index) {
        return nil;
    }
    return self.children[index];
}

-(id<Mark>)lastChild{
    return [self.children lastObject];
}

-(id)copyWithZone:(NSZone *)zone{
    Dot *dot = [[[self class] alloc] initWithLocation:_location];
    [dot setColor:[UIColor colorWithCGColor:[_color CGColor]]];
    [dot setSize:_size];
    for (id<Mark> mark in self.children) {
        id<Mark> childCopy = [mark copy];
        [dot addMark:childCopy];
    }
    return dot;
}

@end

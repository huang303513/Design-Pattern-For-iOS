//
//  HCDWebSiteFactory.m
//  21享元模式
//
//  Created by yifan on 15/8/27.
//  Copyright (c) 2015年 黄成都. All rights reserved.
//

#import "HCDWebSiteFactory.h"
#import "HCDConcreteWebSite.h"
@implementation HCDWebSiteFactory

-(instancetype)init{
    self = [super init];
    if (self) {
        _flyweights = [NSDictionary dictionary];
    }
    return self;
}

-(id<HCDWebSite> )getWebSiteCategory:(NSString *)webkey{
    __block id<HCDWebSite> webset = nil;
    [self.flyweights enumerateKeysAndObjectsUsingBlock:^(id key, id obj, BOOL *stop) {
        if (webkey == key) {
            webset = obj;
            *stop = YES;
        }
    }];
    if (webset == nil) {
        HCDConcreteWebSite  *concreteset = [[HCDConcreteWebSite alloc] init];
        concreteset.webName = webkey;
        webset = concreteset;
        
        NSMutableDictionary *mutabledic = [NSMutableDictionary dictionaryWithDictionary:self.flyweights];
        [mutabledic setObject:webset forKey:webkey];
        self.flyweights = [NSDictionary dictionaryWithDictionary:mutabledic];
    }
    return webset;
}

-(NSInteger)getWebSiteCount{
    return self.flyweights.count;
}
@end

//
//  BusManager.m
//  BusCocoa
//
//  Created by YanYi on 2018/11/25.
//  Copyright © 2018 YanYi. All rights reserved.
//

#import "BusManager.h"

@implementation BusManager

static BusManager *s_instance = nil;


#pragma - mark Singlenton

+ (instancetype)allocWithZone:(struct _NSZone *)zone {
    if (s_instance == nil) {
        static dispatch_once_t onceToken;
        dispatch_once(&onceToken, ^{
            s_instance = [super allocWithZone:zone];
        });
    }
    return s_instance;
}

- (instancetype)init {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        s_instance                      = [super init];
    });
    return s_instance;
}

+ (instancetype)sharedInstance {
    return [[self alloc]init];
}

- (id)copy {
    return s_instance;
}

- (id)copyWithZone:(NSZone *)zone {
    return s_instance;
}

- (id)mutableCopy {
    return s_instance;
}

- (id)mutableCopyWithZone:(NSZone *)zone {
    return s_instance;
}


@end

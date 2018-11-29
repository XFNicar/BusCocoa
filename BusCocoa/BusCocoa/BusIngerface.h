//
//  BusIngerface.h
//  BusCocoa
//
//  Created by YanYi on 2018/11/25.
//  Copyright © 2018 YanYi. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface BusIngerface : NSObject<NSMutableCopying,NSCopying>

+ (instancetype)sharedInstance;

@end

NS_ASSUME_NONNULL_END

//
//  YuyanAntiCheatConfigurer.h
//  YuyanAntiCheat
//
//  Created by 白粿 on 2019/10/14.
//  Copyright © 2019 艾狄墨搏. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface YuyanAntiCheatConfigurer : NSObject

+ (instancetype)shareConfigurer;
+ (instancetype)new NS_UNAVAILABLE;
+ (instancetype)alloc NS_UNAVAILABLE;

+ (NSString *)version;

- (void)prepare:(NSString *)appID callback:(void(^)(NSError * _Nullable error))complete;

- (void)event:(NSString *)key stringValue:(nullable NSString *)strValue intValue:(int)intValue;

- (void)event:(NSString *)key stringValue:(nullable NSString *)strValue;

@end

NS_ASSUME_NONNULL_END

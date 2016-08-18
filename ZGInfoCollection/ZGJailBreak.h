//
//  ZGJailBreak.h
//  ZGInfoCollectionDemo
//  这里用于判断设备是否越狱
//  Copyright © 2016年 zhanggui. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ZGJailBreak : NSObject

/**
 *  是否越狱
 *
 *  @return YES表示已经越狱，NO表示没有越狱
 */
+ (BOOL)isJailBreak;
@end

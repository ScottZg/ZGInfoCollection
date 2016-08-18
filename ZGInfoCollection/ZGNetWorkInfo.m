//
//  ZGNetWorkInfo.m
//  ZGInfoCollectionDemo
//
//  Created by zhanggui on 16/8/18.
//  Copyright © 2016年 zhanggui. All rights reserved.
//

#import "ZGNetWorkInfo.h"
#import <SystemConfiguration/CaptiveNetwork.h>
@implementation ZGNetWorkInfo


+ (instancetype)netWorkInfo {
    static ZGNetWorkInfo *netInfo = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        netInfo = [[self alloc] init];
    });
    return netInfo;
}
- (NSMutableArray *)getWifiListArr {
    NSMutableArray *wifiListArr = [[NSMutableArray alloc] initWithCapacity:5];
    //获取可用wifi列表
    CFArrayRef wifiInterfaces = CNCopySupportedInterfaces();
    if (!wifiInterfaces) {
        return nil;
    }
    //CoreFoundation对象转换
    NSArray *interfaces = (__bridge NSArray *)wifiInterfaces;
    [interfaces enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        CFDictionaryRef dictRef = CNCopyCurrentNetworkInfo((__bridge CFStringRef)obj);
        NSDictionary *netWorkInfo = (__bridge NSDictionary *)dictRef;
        [wifiListArr addObject:netWorkInfo];
        CFRelease(dictRef);
    }];
    CFRelease(wifiInterfaces);
    return wifiListArr;
}
@end

//
//  ZGNetWorkInfo.m
//  ZGInfoCollectionDemo
//
//  Created by zhanggui on 16/8/18.
//  Copyright © 2016年 zhanggui. All rights reserved.
//

#import "ZGNetWorkInfo.h"
#import <SystemConfiguration/CaptiveNetwork.h>


@interface ZGNetWorkInfo ()

@property (nonatomic,strong)Reachability *reachAb;
@end
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
- (BOOL)isConnectionNetWork {
    BOOL isConnect = NO;
    switch ([self.reachAb currentReachabilityStatus]) {
        case NotReachable:
            isConnect = NO;
            break;
        case ReachableViaWiFi:   //使用的wifi
            isConnect = YES;
            break;
        case ReachableViaWWAN:  //使用的移动网络
            isConnect = YES;
            break;
        default:

            break;
    }
    return isConnect;
}
- (NetWorkReachStatus)getNetWorkStaus {
    switch ([self.reachAb currentReachabilityStatus]) {
        case NotReachable:
            return NetWorkReachStatusNoConnect;
            break;
        case ReachableViaWiFi:   //使用的wifi
            return NetWorkReachStatusWifi;
            break;
        case ReachableViaWWAN:  //使用的移动网络
            return NetWorkReachStatusViaWWan;
            break;
        default:
            return NetWorkReachStatusUnDefine;
            break;
    }
}
+ (BOOL)ifConnectDelegate {
    CFDictionaryRef proxySettings = CFNetworkCopySystemProxySettings();
    NSDictionary *dictProxy = (__bridge_transfer id)proxySettings;
    NSLog(@"%@",dictProxy);
    
    //是否开启了http代理
    if ([[dictProxy objectForKey:@"HTTPEnable"] boolValue]) {
        return YES;
    }
    return  NO;
    
}
+ (NSDictionary *)getCurrentDelegateSettings {
    CFDictionaryRef proxySettings = CFNetworkCopySystemProxySettings();
    NSDictionary *dictProxy = (__bridge_transfer id)proxySettings;
    
    //是否开启了http代理
    if ([[dictProxy objectForKey:@"HTTPEnable"] boolValue]) {
        CFBridgingRelease(proxySettings);
        return dictProxy;
        
    }
    return nil;
}
#pragma mark - Lazy load
- (Reachability *)reachAb {
    if (!_reachAb) {
        _reachAb = [Reachability reachabilityWithHostName:@"http://www.baidu.com"];
    }
    return _reachAb;
}
@end

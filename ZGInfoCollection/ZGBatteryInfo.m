//
//  ZGBatteryInfo.m
//  ZGInfoCollectionDemo
//
//  Created by zhanggui on 16/8/18.
//  Copyright © 2016年 zhanggui. All rights reserved.
//

#import "ZGBatteryInfo.h"
#import <UIkit/UIDevice.h>
@interface ZGBatteryInfo ()

@property (nonatomic,strong)UIDevice *device;
@end


@implementation ZGBatteryInfo

+ (instancetype)currentBatteryInfo {
    static ZGBatteryInfo *info= nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        info = [[self alloc] init];
    });
    return info;
    
}
- (ZGBatteryState)batteryState {
    switch (self.device.batteryState) {
        case UIDeviceBatteryStateFull:
            return ZGBatteryStateFull;
            break;
        case UIDeviceBatteryStateUnknown:
            return ZGBatteryStateUnknown;
            break;
        case UIDeviceBatteryStateCharging:
            return ZGBatteryStateCharging;
            break;
        case UIDeviceBatteryStateUnplugged:
            return ZGBatteryStateUnplugged;
            break;
        default:
            return ZGBatteryStateUnknown;
            break;
    }
}
- (CGFloat)currentBatteryLevel {
    return self.device.batteryLevel;
}
- (BOOL)isAllowMonitorBattery {
    return self.device.isBatteryMonitoringEnabled;
}
#pragma mark - Lazy Load
- (UIDevice *)device {
    if (!_device) {
        _device = [UIDevice currentDevice];
    }
    return _device;
}
@end

//
//  ZGBatteryInfo.h
//  ZGInfoCollectionDemo
//  电池信息
//  Copyright © 2016年 zhanggui. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreGraphics/CGBase.h>
typedef NS_ENUM(NSInteger,ZGBatteryState) {
    ZGBatteryStateUnknown,
    ZGBatteryStateUnplugged,    //未充电
    ZGBatteryStateCharging,   //正在充电
    ZGBatteryStateFull       //充满电
};
@interface ZGBatteryInfo : NSObject

/**
 *  单例构造
 *
 *  @return 当前实例
 */
+ (instancetype) currentBatteryInfo;

/**
 *  当前电池量
 *
 *  @return 0-1
 */
- (CGFloat)currentBatteryLevel;
/**
 *  电池状态
 *
 *  @return 正在充电、未充电、充满电
 */
- (ZGBatteryState)batteryState;
/**
 *  电池是否允许监控
 *
 *  @return YES表示能够监控，NO表示不能够监控
 */
- (BOOL)isAllowMonitorBattery;
@end

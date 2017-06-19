//
//  ZGNetWorkInfo.h
//  ZGInfoCollectionDemo
//网络信息
//  Copyright © 2016年 zhanggui. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Reachability.h"

typedef NS_ENUM(NSInteger,NetWorkReachStatus)  {
    NetWorkReachStatusUnDefine,    //未定义
    NetWorkReachStatusNoConnect,   //未连接
    NetWorkReachStatusWifi,   //链接的wifi
    NetWorkReachStatusViaWWan   //链接的移动网络
};


@interface ZGNetWorkInfo : NSObject

/**
 *  单例当前网络信息类
 *
 *  @return 当前类实例
 */
+ (instancetype)netWorkInfo;

/**
 *  得到当前wifi列表
 *
 *  @return wifi列表,经测试，这里只是返回了当前连接wifi的信息
 */
- (NSMutableArray *)getWifiListArr;


/**
 *  当前设备是否联网
 *
 *  @return YES表示联网，NO表示没有联网
 */
- (BOOL)isConnectionNetWork;


/**
 *  得到当前网络状态
 *
 *  @return 返回 NetWorkStaus枚举
 */
- (NetWorkReachStatus)getNetWorkStaus;


/**
 是否连接了代理

 @return YES表示连接了代理，NO表示没有连接代理。
 */
+ (BOOL)ifConnectDelegate;


/**
 得到当前代理的配置

 @return dic,如果没有连接代理，怎返回nil
 */
+ (NSDictionary *)getCurrentDelegateSettings;
@end

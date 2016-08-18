//
//  ZGNetWorkInfo.h
//  ZGInfoCollectionDemo
//网络信息
//  Copyright © 2016年 zhanggui. All rights reserved.
//

#import <Foundation/Foundation.h>

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
@end

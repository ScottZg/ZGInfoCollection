//
//  ZGProjectInfo.h
//  ZGInfoCollectionDemo
//
//  Created by zhanggui on 16/8/22.
//  Copyright © 2016年 zhanggui. All rights reserved.
//

#import <Foundation/Foundation.h>

/**
 *  获取当前项目信息
 */
@interface ZGProjectInfo : NSObject


/**
 *  得到当前工程的实例
 *
 *  @return 单例实例
 */
+ (instancetype)currentProject;


/**
 *  得到当前项目版本
 *
 *  @return 当前版本
 */
- (NSString *)getProjectVersion;

/**
 *  得到当前项目构建版本号
 *
 *  @return 当前构建版本
 */
- (NSString *)getProjectBuildVersion;



/**
 *  得到当前项目名称
 *
 *  @return 当前名称
 */
- (NSString *)getProjectName;
@end

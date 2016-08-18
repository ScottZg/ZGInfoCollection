//
//  ZGDeviceInfo.h
//  ZGInfoCollectionDemo
//获取设备的信息
//  Copyright © 2016年 zhanggui. All rights reserved.
//

//char	sysname[_SYS_NAMELEN];	/* [XSI] Name of OS */
//char	nodename[_SYS_NAMELEN];	/* [XSI] Name of this network node */
//char	release[_SYS_NAMELEN];	/* [XSI] Release level */
//char	version[_SYS_NAMELEN];	/* [XSI] Version level */
//char	machine[_SYS_NAMELEN];	/* [XSI] Hardware type */


#import <Foundation/Foundation.h>

/**
 *  这里是用来获取设备的一些信息
 */
@interface ZGDeviceInfo : NSObject

/**
 *  是否支持多任务
 *
 *  @return YES表示支持，NO表示不支持
 */
- (BOOL)multitaskingSupported;
/**
 *  单例实例化一个当前对象
 *
 *  @return 返回一个当前对象
 */
+ (instancetype)currentDeviceInfo;

/**
 *  得到当前用的什么手机，iPhon5s? iPhone6s ....
 *
 *  @return 手机类型名称
 */
- (NSString *)getCurrentDevicePhoneType;
/**
 *  得到当前设备独一标识符
 *
 *  @return 例如：0996E3AC-8800-4961-A3BF-5D49299C96E7
 */
- (NSString *)getUUID;
/**
 *  得到当前设备类型 ：iPhone / iPad
 *
 *  @return iPhone / iPad
 */
- (NSString *)getDeviceType;
/**
 *  得到当前的手机名称，关于本机里面的名称
 *
 *  @return 手机名称
 */
- (NSString *)getCurrentDeviceName;
/**
 *  得到当前系统名称
 *
 *  @return 系统名称
 */
- (NSString *)getSystemName;
/**
 *  得到当前系统版本
 *
 *  @return 版本.例如：9.3.4,以及最新的10
 */
- (NSString *)getSystemVersion;
/**
*  获取当前设置XNU内核版本号
*
*  @return 返回当前XNU内核版本号
*/
- (NSString *)getKernelVersion;
/**
 *  得到构建描述
 *
 *  @return 得到内核描述信息
 */
- (NSString *)getDarwinBuildDescription;
/**
 *  得到硬件类型
 *
 *  @return 硬件类型,iPhone8,1,iPhone5.1等等
 */
- (NSString *)getHardWardType;
/**
 *  得到当前网络节点名称
 *
 *  @return 当前节点名称
 */
- (NSString *)getNetWordNodeName;
/**
 *  得到当前操作系统名称
 *
 *  @return 内核操作系统名称
 */
- (NSString *)getOSName;

/**
 *  得到当前设备的核数
 *
 *  @return 核数
 */
- (NSInteger)getNuclearCount;
/**
 *  得到当前设备活跃的核数
 *
 *  @return 核数
 */
- (NSInteger)getActiveNuclearCount;
@end

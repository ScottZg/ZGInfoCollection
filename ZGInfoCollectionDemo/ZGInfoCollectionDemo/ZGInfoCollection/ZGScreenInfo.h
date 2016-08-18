//
//  ZGScreenInfo.h
//  ZGInfoCollectionDemo
//屏幕信息
//  Copyright © 2016年 zhanggui. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreGraphics/CGBase.h>
@interface ZGScreenInfo : NSObject

/**
 *  单例构建当前屏幕信息
 *
 *  @return 当前对象实例
 */
+ (instancetype)currentScreenInfo;

/**
 *  得到当前屏幕宽度
 *
 *  @return 宽度值
 */
- (CGFloat)getCurrentScreenWith;
/**
 *  得到当前屏幕高度
 *
 *  @return 高度值
 */
- (CGFloat)getCurrentScreenHeight;

/**
 *  得到屏幕亮度
 *
 *  @return 0-1
 */
- (CGFloat)getScreenBrightness;
/**
 *  屏幕分辨率
 *
 *  @return 
 */
- (NSString *)screenResolution;
/**
 *  得到当前屏幕dpi
 *
 *  @return return value description
 */
- (CGFloat)getScreenDpi;
@end

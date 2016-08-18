//
//  ZGStorageInfo.h
//  ZGInfoCollectionDemo
//  得到当前存储大小，包括内存存储和磁盘存储
//  Copyright © 2016年 zhanggui. All rights reserved.
//

#import <Foundation/Foundation.h>


typedef NS_ENUM(NSInteger,ZGSizeType) {
    ZGSizeTypeOrigin = 2,   //原始数据，b
    ZGSizeTypeNormalized  //规格化后的数据
};
@interface ZGStorageInfo : NSObject

/**
 *  单例构造
 *
 *  @return 当前类实例
 */
+ (instancetype)storageInfo;


/**
 *  得到当前磁盘总大小
 *
 *  @param type 大小类型：ZGSizeTypeOrigin是原始大小，没有经过转换，单位为B；ZGSizeTypeNormalized是规格化后的大小
 *
 *  @return 返回大小，可能有差距，但是相差不大
 */
- (NSString *)getDiskTotalSizeBySizeType:(ZGSizeType)type;

/**
 *  得到当前磁盘空闲内存大小
 *
 *  @param type type 大小类型：ZGSizeTypeOrigin是原始大小，没有经过转换，单位为B；ZGSizeTypeNormalized是规格化后的
 *
 *  @return 返回大小，可能有差距，但是相差不大
 */
- (NSString *)getDiskFreeSizeBySizeType:(ZGSizeType)type;
/**
 *  得到当前磁盘已经使用的大小
 *
 *  @param type type 大小类型：ZGSizeTypeOrigin是原始大小，没有经过转换，单位为B；ZGSizeTypeNormalized是规格化后的
 *
 *  @return 返回大小，可能有差距，但是相差不大
 */
- (NSString *)getDiskUsedSizeBySizeType:(ZGSizeType)type;

/**
*  得到当前物理内存总大小，指通过物理内存而获得的内存空间大小
*
*  @param type 大小类型：ZGSizeTypeOrigin是原始大小，没有经过转换，单位为B；ZGSizeTypeNormalized是规格化后的大小
*
*  @return 返回大小
*/
- (NSString *)getMemoryTotalSizeBySizeType:(ZGSizeType)type;

/**
 *  得到当前物理内存空闲内存大小 Unimplemented
 *
 *  @param type type 大小类型：ZGSizeTypeOrigin是原始大小，没有经过转换，单位为B；ZGSizeTypeNormalized是规格化后的
 *
 *  @return 返回大小，可能有差距，但是相差不大
 */
- (NSString *)getMemoryFreeSizeBySizeType:(ZGSizeType)type;
/**
 *  得到当前内存已经使用的大小 Unimplemented
 *
 *  @param type type 大小类型：ZGSizeTypeOrigin是原始大小，没有经过转换，单位为B；ZGSizeTypeNormalized是规格化后的
 *
 *  @return 返回大小，可能有差距，但是相差不大
 */
- (NSString *)getMemoryUsedSizeBySizeType:(ZGSizeType)type;
@end

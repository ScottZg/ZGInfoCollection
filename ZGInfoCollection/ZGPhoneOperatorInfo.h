//
//  ZGPhoneOperatorInfo.h
//  ZGInfoCollectionDemo
//
//  Created by zhanggui on 2017/7/6.
//  Copyright © 2017年 zhanggui. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ZGPhoneOperatorInfo : NSObject



/**
 得到当前手机所属运营商名称，如果没有则为nil

 @return 返回运营商名称
 */
+ (NSString *)getCurrentPhoneOperatorName;


/**
 得到当前手机号的国家代码,如果没有则为nil

 @return 返回国家代码
 */
+ (NSString *)getCurrentISOCountryCode;

/**
 得到移动国家码

 @return 返回移动国家码
 */
+ (NSString *)getMobileCountryCode;
@end

//
//  ZGPhoneOperatorInfo.m
//  ZGInfoCollectionDemo
//网络运营商信息
//  Created by zhanggui on 2017/7/6.
//  Copyright © 2017年 zhanggui. All rights reserved.
//

#import "ZGPhoneOperatorInfo.h"
#import <CoreTelephony/CTTelephonyNetworkInfo.h>
#import <CoreTelephony/CTCarrier.h>
@implementation ZGPhoneOperatorInfo


+ (NSString *)getCurrentPhoneOperatorName {
    CTTelephonyNetworkInfo *info = [CTTelephonyNetworkInfo new];
    CTCarrier *carrier = [info subscriberCellularProvider];
    
    if (!carrier.isoCountryCode) {
        return nil;
    }
    return [carrier carrierName];
}
+ (NSString *)getCurrentISOCountryCode {
    CTTelephonyNetworkInfo *info = [CTTelephonyNetworkInfo new];
    CTCarrier *carrier = [info subscriberCellularProvider];
    
    if (!carrier.isoCountryCode) {
        return nil;
    }
    return [carrier isoCountryCode];

}
+ get
@end

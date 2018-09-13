#ifdef __OBJC__
#import <UIKit/UIKit.h>
#else
#ifndef FOUNDATION_EXPORT
#if defined(__cplusplus)
#define FOUNDATION_EXPORT extern "C"
#else
#define FOUNDATION_EXPORT extern
#endif
#endif
#endif

#import "Reachability.h"
#import "ZGBatteryInfo.h"
#import "ZGDeviceInfo.h"
#import "ZGDeviceVPNInfo.h"
#import "ZGInfoCollection.h"
#import "ZGJailBreak.h"
#import "ZGLocationInfo.h"
#import "ZGNetWorkInfo.h"
#import "ZGPhoneOperatorInfo.h"
#import "ZGProjectInfo.h"
#import "ZGScreenInfo.h"
#import "ZGStorageInfo.h"

FOUNDATION_EXPORT double ZGInfoCollectionVersionNumber;
FOUNDATION_EXPORT const unsigned char ZGInfoCollectionVersionString[];


//
//  ZGScreenInfo.m
//  ZGInfoCollectionDemo
//
//  Created by zhanggui on 16/8/18.
//  Copyright © 2016年 zhanggui. All rights reserved.
//

#import "ZGScreenInfo.h"
#import <UIkit/UIScreen.h>
@interface ZGScreenInfo ()

@property (nonatomic,strong)UIScreen *screen;
@end

@implementation ZGScreenInfo

#pragma mark - init method
+ (instancetype)currentScreenInfo {
    static ZGScreenInfo *screenInfo = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        screenInfo = [[self alloc] init];
    });
    return screenInfo;
}
#pragma mark - method
- (CGFloat)getCurrentScreenWith {
    return self.screen.bounds.size.width;
}
- (CGFloat)getCurrentScreenHeight {
    return self.screen.bounds.size.height;
}
- (CGFloat)getScreenBrightness {
    return self.screen.brightness;
}
- (NSString *)screenResolution {
    return [NSString stringWithFormat:@"%.0f_%.0f",self.screen.scale*self.screen.bounds.size.height,self.screen.scale*self.screen.bounds.size.width];
}
/**
 *  获取dpi
 *
 *  @return dpi的值,参考：http://stackoverflow.com/questions/3860305/get-ppi-of-iphone-ipad-ipod-touch-at-runtime
 */
- (CGFloat)getScreenDpi {
    float scale = 1;
    if ([[UIScreen mainScreen] respondsToSelector:@selector(scale)]) {
        scale = [[UIScreen mainScreen] scale];
    }
    if (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad) {
        return 132*scale;
    }else if (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPhone) {
        return 163*scale;
    }else {
        return 160*scale;
    }
    
}
#pragma mark - Lazy Load
- (UIScreen *)screen {
    if (!_screen) {
        _screen = [UIScreen mainScreen];
    }
    return _screen;
}
@end

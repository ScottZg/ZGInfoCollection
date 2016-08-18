//
//  ZGJailBreak.m
//  ZGInfoCollectionDemo
//
//  Created by zhanggui on 16/8/18.
//  Copyright © 2016年 zhanggui. All rights reserved.
//

#import "ZGJailBreak.h"
#import <UIkit/UIApplication.h>
#include <stdlib.h>
@implementation ZGJailBreak

//这里用多个判断方式判断，确保判断更加准确
+ (BOOL)isJailBreak {
    return [self p_judgeByOpenAppFolder] || [self p_judgeByOpenUrl] || [self p_judgeByFolderExists] || [self p_judgeByReadDYLD_INSERT_LIBRARIES];
}



#pragma mark - private method
+ (BOOL)p_judgeByReadDYLD_INSERT_LIBRARIES {
    char *env = getenv("DYLD_INSERT_LIBRARIES");
    if (env) {
        return YES;
    }
    return NO;
}
//通过能否打开软件安装文件夹判断
+ (BOOL)p_judgeByOpenAppFolder {
    NSError *error;
    NSString *path = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) lastObject];
    NSRange rang = [path rangeOfString:@"Application/"];
    NSString *appPath = [path substringToIndex:rang.location+ rang.length];
    if ([[NSFileManager defaultManager] fileExistsAtPath:appPath]) {
        NSArray *arr = [[NSFileManager defaultManager] contentsOfDirectoryAtPath:appPath error:&error];
        if (arr && [arr count]!=0) {
            return YES;
        }else {
            return NO;
        }
        
        return YES;
    }
    return NO;
}
//通过能否打开cydia：//来判断，YES说明可以打开，就是越狱的，NO表示不可以打开
+ (BOOL)p_judgeByOpenUrl {
    if ([[UIApplication sharedApplication] canOpenURL:[NSURL URLWithString:@"cydia://"]]) {
        return YES;
    }
    return NO;
}


//通过文件夹判断，如果boo为YES说明有以下的一些文件夹，则说明已经越狱
+ (BOOL)p_judgeByFolderExists {
    __block BOOL boo = NO;
    NSArray *arr = @[@"/Applications/Cydia.app",@"/Library/MobileSubstrate/MobileSubstrate.dylib",@"/bin/bash",@"/usr/sbin/sshd",@"/etc/apt"];
    [arr enumerateObjectsUsingBlock:^(id   obj, NSUInteger idx, BOOL *  stop) {
        if ([[NSFileManager defaultManager] fileExistsAtPath:obj]) {
            boo = YES;
            *stop = YES;
        }
    }];
    return boo;
}
@end

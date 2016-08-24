//
//  ZGProjectInfo.m
//  ZGInfoCollectionDemo
//
//  Created by zhanggui on 16/8/22.
//  Copyright © 2016年 zhanggui. All rights reserved.
//

#import "ZGProjectInfo.h"

@interface ZGProjectInfo ()

@property (nonatomic,strong)NSDictionary *projectInfoDic;
@end


@implementation ZGProjectInfo


+ (instancetype)currentProject {
    static ZGProjectInfo *projInfo = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        projInfo = [[self alloc] init];
    });
    return projInfo;
}

- (NSString *)getProjectName {
   return self.projectInfoDic[@"CFBundleName"];
}
- (NSString *)getProjectBuildVersion {
     return self.projectInfoDic[@"CFBundleVersion"];
}
- (NSString *)getProjectVersion {
     return self.projectInfoDic[@"CFBundleShortVersionString"];
}


#pragma mark - Lazy load
- (NSDictionary *)projectInfoDic {
    if (!_projectInfoDic) {
        _projectInfoDic = [[NSBundle mainBundle] infoDictionary];
    }
    return _projectInfoDic;
}
@end

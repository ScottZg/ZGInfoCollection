//
//  ViewController.m
//  ZGInfoCollectionDemo
//
//  Created by zhanggui on 16/8/18.
//  Copyright © 2016年 zhanggui. All rights reserved.
//

#import "ViewController.h"
#import "ZGInfoCollection.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   
    NSLog(@"%d\n",[ZGJailBreak isJailBreak]);
}
@end

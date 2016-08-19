//
//  ViewController.m
//  ZGInfoCollectionDemo
//
//  Created by zhanggui on 16/8/18.
//  Copyright © 2016年 zhanggui. All rights reserved.
//

#import "ViewController.h"
#import "ZGInfoCollection.h"
@interface ViewController ()<CLLocationManagerDelegate>

@property (weak, nonatomic) IBOutlet UILabel *infoTextLabel;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.infoTextLabel.numberOfLines = 0;
    ZGLocationInfo *info = [ZGLocationInfo currentLocation];
        [info getCurrentLocation:^(CLPlacemark *location, NSString *desc) {
            if (location) {
                self.infoTextLabel.text = [NSString stringWithFormat:@"%@\n%@",location.name,location.thoroughfare];
                self.title = desc;
            }else {
                self.infoTextLabel.text = desc;
            }
        }];
}
@end

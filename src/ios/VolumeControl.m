//
//  VolumeControl.m
//  SmartVolume
//
//  Created by Wilson on 2017/8/8.
//  Copyright © 2017年 Wilson. All rights reserved.
//

#import "VolumeControl.h"

@implementation VolumeControl

//获取当前系统的音量控制条
+ (UISlider *)currentSystemVolumeSlider {
    static UISlider * volumeViewSlider = nil;
    if(volumeViewSlider == nil) {
        MPVolumeView * volumeView = [[MPVolumeView alloc] initWithFrame:CGRectMake(10, 50, 200, 4)];
        [volumeView setHidden:YES];
        for(UIView *newView in volumeView.subviews) {
            if([newView.class.description isEqualToString:@"MPVolumeSlider"]) {
                volumeViewSlider = (UISlider *)newView;
                break;
            }
        }
    }
    return volumeViewSlider;
}

+ (CGFloat)getSystemVolumeValue {
    return [[self currentSystemVolumeSlider] value];
}

//设置系统音量大小
+ (void)setSysVolumeWith:(double)volume {
    [self currentSystemVolumeSlider].value = volume;
}

@end

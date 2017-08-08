//
//  VolumeControl.h
//  SmartVolume
//
//  Created by Wilson on 2017/8/8.
//  Copyright © 2017年 Wilson. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import <MediaPlayer/MediaPlayer.h>
#import <Cordova/CDVPlugin.h>

@interface VolumeControl : CDVPlugin

+ (UISlider *)currentSystemVolumeSlider;

+ (void)setSysVolumeWith:(double)volume;

@end

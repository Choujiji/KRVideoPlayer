//
//  KRVideoPlayerController.h
//  KRKit
//
//  Created by aidenluo on 5/23/15.
//  Copyright (c) 2015 36kr. All rights reserved.
//

//@import MediaPlayer;
#import <MediaPlayer/MediaPlayer.h>

@interface KRVideoPlayerController : MPMoviePlayerController

@property (nonatomic, copy)void(^dimissCompleteBlock)(void);
@property (nonatomic, assign) CGRect frame;
@property (weak, nonatomic) UIView *originSuperView;//原始父视图

/** 进入全屏回调 */
@property (copy, nonatomic) void (^fullScreenCompleteBlock)(void);
/** 退出全屏回调 */
@property (copy, nonatomic) void (^shrinkScreenCompleteBlock)(void);
/** 播放完成回调 */
@property (copy, nonatomic) void (^playbackCompleteBlock)(void);

- (instancetype)initWithFrame:(CGRect)frame;
- (void)showInWindow;
- (void)dismiss;
/** 设置起始播放时间 */
- (void)setPlaybackTime:(NSTimeInterval)playbackTime;
/** 是否显示控制视图 */
- (void)showControlBar:(BOOL)control
            showTopBar:(BOOL)topBar;

@end

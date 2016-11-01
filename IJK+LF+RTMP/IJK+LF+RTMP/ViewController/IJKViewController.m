//
//  IJKViewController.m
//  Live
//
//  Created by BK.RSS on 2016/11/1.
//  Copyright © 2016年 REN. All rights reserved.
//

#import "IJKViewController.h"
#import <IJKMediaFramework/IJKMediaFramework.h>

@interface IJKViewController ()


@property (nonatomic ,strong)IJKFFMoviePlayerController * player;
@end

@implementation IJKViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor blackColor];
    // Do any additional setup after loading the view.
    
    [IJKFFMoviePlayerController checkIfFFmpegVersionMatch:YES];
    // [IJKFFMoviePlayerController checkIfPlayerVersionMatch:YES major:1 minor:0 micro:0];
    
    IJKFFOptions *options = [IJKFFOptions optionsByDefault];
    
//    NSURL * url = [NSURL URLWithString:@"rtmp://live.hkstv.hk.lxdns.com:1935/live/fss"];
    NSURL * url = [NSURL URLWithString:@"rtmp://localhost:1935/rtmplive/test"];
    
    self.player = [[IJKFFMoviePlayerController alloc] initWithContentURL:url withOptions:options];
    self.player.view.autoresizingMask = UIViewAutoresizingFlexibleWidth|UIViewAutoresizingFlexibleHeight;
    self.player.view.frame = self.view.bounds;
    self.player.scalingMode = IJKMPMovieScalingModeAspectFit;
    self.player.shouldAutoplay = YES;
    self.player.view.backgroundColor = [UIColor blackColor];
    self.view.autoresizesSubviews = YES;
    [self.view addSubview:self.player.view];
    // 开始播放
    [self.player prepareToPlay];
    
    /*
     - (void)play;
     - (void)pause;
     - (void)stop;
     */
    
}


@end

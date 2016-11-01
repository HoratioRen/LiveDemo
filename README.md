# LiveDemo
ijkPlayer+LFLiveKit+RTMP


准备：# install homebrew, git, yasm

ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew install git

brew install yasm


1.下载pod三方库  pod install

2.集成ijkPlayer
ijkplayer集成

1)下载https://github.com/Bilibili/ijkplayer

2)打开终端, cd 到jkplayer-master文件夹中

3)执行命令：./init-ios.sh, 这一步是去下载 ffmpeg
                    cd ios
                    ./compile-ffmpeg.sh clean
                    ./compile-ffmpeg.sh all
					
4)打包IJKMediaFramework.framework框架:
     (1) 打开工程IJKMediaPlayer.xcodeproj
     (2)设置工程的 scheme -- run --- BuildConfiguration 设置为 release
     (3)设置好 scheme 后, 分别选择真机和模拟器进行编译, 编译完成后, 进入 Finder
	 (4)进入 Finder 后, 可以看到有真机和模拟器两个版本的编译结果
	 
5)合并真机和模拟器版本的 framework
lipo -create "真机版本路径" "模拟器版本路径" -output "合并后的文件路径"
用合并后的IJKMediaFramework把原来的IJKMediaFramework替换掉，然后将新的IJKMediaFramework.framework文件复制出来，导入自己工程

已合并完成的IJKMediaFramework的地址：

ijkViewController中url为拉流地址

3.导入框架
####      IJKMediaFramework.framework
      	 AudioToolbox.framework
     	 AVFoundation.framework
         CoreGraphics.framework
         CoreMedia.framework
         CoreVideo.framework
         libbz2.tbd
         libz.tbd
         MediaPlayer.framework
       	 MobileCoreServices.framework
     	 OpenGLES.framework
         QuartzCore.framework
         UIKit.framework
         VideoToolbox.framework
4.LFLiveKit 集成
	1）将从github下载的LFLiveKitDemo的LFLivePreview、UIControl+YYAdd、UIView+YYAdd三个类复制到新工程中，在推流页面写入：
 		[self.view addSubview:[[LFLivePreview alloc] initWithFrame:self.view.bounds]];
		
	2）在LFLivePreview.m文件中替换推流地址（在以下位置）
	
	LFLiveStreamInfo *stream = [LFLiveStreamInfo new];
	
    stream.url = @"rtmp://live.hkstv.hk.lxdns.com:1935/live/hks";
	
    [_self.session startLive:stream];

5. 搭建nginx+rtmp环境
	参考：http://www.jianshu.com/p/31c195fd50a4
	












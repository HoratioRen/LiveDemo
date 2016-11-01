//
//  Define.h
//  BKSX
//
//  Created by BK.RSS on 2016/10/27.
//  Copyright © 2016年 REN. All rights reserved.
//

#ifndef Define_h
#define Define_h


#define SCREEN_WIDTH      [UIScreen mainScreen].bounds.size.width
#define SCREEN_HEIGHT      [UIScreen mainScreen].bounds.size.height
#define NAV_HEIGHT  64


//ios7
#define IOS7 [[UIDevice currentDevice] systemVersion].floatValue>=7.0 ? YES : NO

//屏幕的高宽
#define KScreenHeight [UIScreen mainScreen].bounds.size.height
#define KScreenWidth [UIScreen mainScreen].bounds.size.width
// 调试打印
#define NSLog(fmt, ...) NSLog((@"\n函数名:%s\n" "行号:%d \n【输出】" fmt"\n"), __FUNCTION__, __LINE__, ##__VA_ARGS__)

#define CUS_Width(a)    (KScreenHeight/KScreenWidth)*(a)

//用于iphone6的等比例适配
#define ScaleX  KScreenWidth / 320
#define ScaleY  KScreenHeight / 568

//颜色值
#define RGBCOLOR(r,g,b) [UIColor colorWithRed:(r)/255.0f green:(g)/255.0f blue:(b)/255.0f alpha:1]

//windows
#define WINDOWNSS [UIApplication sharedApplication].keyWindow


//16进制颜色
#define UIColorFromRGB(rgbValue) [UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 green:((float)((rgbValue & 0xFF00) >> 8))/255.0 blue:((float)(rgbValue & 0xFF))/255.0 alpha:1.0]


//  font
#define CUSTOMFONT(x) [NSObject fitFont:x]



// iphone 4 5 6 6plus
#define iphone4 [UIScreen mainScreen].bounds.size.height==480 ? YES : NO
#define iphone5 [UIScreen mainScreen].bounds.size.width==320

#define iphone6 [UIScreen mainScreen].bounds.size.width==375?YES:NO
#define iphone6Plus [UIScreen mainScreen].bounds.size.width==414?YES:NO

































#endif /* Define_h */

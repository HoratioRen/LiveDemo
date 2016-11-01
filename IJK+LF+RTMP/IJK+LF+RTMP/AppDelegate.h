//
//  AppDelegate.h
//  IJK+LF+RTMP
//
//  Created by BK.RSS on 2016/11/1.
//  Copyright © 2016年 REN. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end


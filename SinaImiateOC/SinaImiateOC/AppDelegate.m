//
//  AppDelegate.m
//  SinaImiateOC
//
//  Created by xiaoming on 16/7/2.
//  Copyright © 2016年 GoodJob. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    
    
    NSString *clsName = @"SIMainViewController";
    
    Class cls = NSClassFromString(clsName);
    
    UIViewController *vc = [cls new];
    
    _window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    
    _window.rootViewController = vc;
    
    
    [_window makeKeyAndVisible];
    
    
    
    
    
    return YES;
}


@end

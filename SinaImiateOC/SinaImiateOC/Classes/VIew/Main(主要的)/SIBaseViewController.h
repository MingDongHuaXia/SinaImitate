//
//  SIBaseViewController.h
//  SinaImiateOC
//
//  Created by xiaoming on 16/7/2.
//  Copyright © 2016年 GoodJob. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SIBaseViewController : UIViewController

/**
 *  自定义导航条
 */
@property (nonatomic, strong) UINavigationBar *navigationBar;

/**
 *  自定义导航栏条目- 以后设置导航栏就统一使用navItem
 */
@property (nonatomic, strong) UINavigationItem *navItem;

/**
 *  子类继承
 */
- (void)setupUI;

@end

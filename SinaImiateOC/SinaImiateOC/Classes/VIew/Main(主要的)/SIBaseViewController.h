//
//  SIBaseViewController.h
//  SinaImiateOC
//
//  Created by xiaoming on 16/7/2.
//  Copyright © 2016年 GoodJob. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SIBaseViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>
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

/**
 *  表格视图
 */
@property (nonatomic, strong) UITableView *tableView;

/**
 *  加载数据
 */
- (void)loadData;
/**
 *  下拉刷新控件
 */
@property (nonatomic, strong) UIRefreshControl *refreshControl;
/**
 *  上拉刷新标记
 */
@property (nonatomic, assign) BOOL isPullup;

/**
 *  用户登录标记,来决定用户登陆后的界面
 */
@property (nonatomic, assign) BOOL userLogon;

@end

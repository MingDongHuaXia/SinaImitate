//
//  SIBaseViewController.m
//  SinaImiateOC
//
//  Created by xiaoming on 16/7/2.
//  Copyright © 2016年 GoodJob. All rights reserved.
//

#import "SIBaseViewController.h"

@interface SIBaseViewController ()



@end

@implementation SIBaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setupUI];
    
}

#pragma mark - 懒加载
- (UINavigationBar *)navigationBar {
    if (_navigationBar == nil) {
        
        _navigationBar = [[UINavigationBar alloc] initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, 64)];
        
    }
    
    return _navigationBar;
}

- (UINavigationItem *)navItem {
    if (_navItem == nil) {
        
        _navItem = [UINavigationItem new];
        _navItem.title = self.title;
    }
    
    return _navItem;
}

#pragma mark - 重写title的setter方法


#pragma mark - 设置界面
- (void)setupUI {
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    [self.view addSubview:self.navigationBar];
    
    self.navigationBar.items = @[self.navItem];
    // 设置navBar的渲染颜色
    self.navigationBar.barTintColor = [UIColor cz_colorWithHex:0xF6F6F6];
    // 设置navBar的字体颜色
    self.navigationBar.titleTextAttributes = @{NSForegroundColorAttributeName: [UIColor darkGrayColor]};
    
}

#pragma mark - 

@end

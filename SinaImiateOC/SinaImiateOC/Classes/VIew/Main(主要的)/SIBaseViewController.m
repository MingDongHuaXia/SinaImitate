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
    
    [self loadData];
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

#pragma mark - loadData
- (void)loadData {
    
}

#pragma mark - 设置界面
- (void)setupUI {
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    self.automaticallyAdjustsScrollViewInsets = false;
    
    [self setupNavigationBar];
    
    [self setupTableView];
    
}

#pragma mark - 设置表格视图
- (void)setupTableView {
    
    self.tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
    
    [self.view insertSubview:_tableView belowSubview:_navigationBar];
    
    _tableView.delegate = self;
    _tableView.dataSource = self;
    
    self.tableView.contentInset = UIEdgeInsetsMake(self.navigationBar.bounds.size.height, 0, self.tabBarController.tabBar.bounds.size.height, 0);
    
    _refreshControl = [UIRefreshControl new];
    
    [self.tableView addSubview:_refreshControl];
    
    [_refreshControl addTarget:self action:@selector(loadData) forControlEvents:UIControlEventValueChanged];
    
}

#pragma mark - 设置导航条
- (void)setupNavigationBar {
    
    [self.view addSubview:self.navigationBar];
    
    self.navigationBar.items = @[self.navItem];
    // 设置navBar的渲染颜色
    self.navigationBar.barTintColor = [UIColor cz_colorWithHex:0xF6F6F6];
    // 设置navBar的字体颜色
    self.navigationBar.titleTextAttributes = @{NSForegroundColorAttributeName: [UIColor darkGrayColor]};
}

#pragma mark - UITableViewDataSource
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 0;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    
    return [UITableViewCell new];
}

@end



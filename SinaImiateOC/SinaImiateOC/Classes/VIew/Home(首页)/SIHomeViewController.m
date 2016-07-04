////  SIHomeViewController.m
//
//
//  Created by xiaoming on 16/7/3.
//  Copyright © 2016年 GoodJob. All rights reserved.
//

#import "SIHomeViewController.h"
#import "SIDemoViewController.h"

@interface SIHomeViewController ()

@end

@implementation SIHomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

#pragma mark - 左侧好友barButtonItem的监听方法
- (void)showFriends {
    
    SIDemoViewController *vc = [SIDemoViewController new];
    
    vc.hidesBottomBarWhenPushed = YES;
    
    [self.navigationController pushViewController:vc animated:YES];
    
    
}

#pragma mark - 设置界面
- (void)setupUI {
    [super setupUI];
    
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"好友" style:UIBarButtonItemStylePlain target:self action:@selector(showFriends)];
    
}

@end

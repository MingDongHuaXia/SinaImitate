////  SIHomeViewController.m
//
//
//  Created by xiaoming on 16/7/3.
//  Copyright © 2016年 GoodJob. All rights reserved.
//

#import "SIHomeViewController.h"
#import "SIDemoViewController.h"

static NSString *cellId = @"cellId";

@interface SIHomeViewController ()

@property (nonatomic, strong) NSMutableArray *statusList;

@end

@implementation SIHomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
}

#pragma mark - loadData
- (void)loadData {
    
    for (NSInteger i = 0; i < 10; i++) {
        
        [_statusList insertObject:@(i).description atIndex:0];
    }
    
}


#pragma mark - 左侧好友barButtonItem的监听方法
- (void)showFriends {
    
    SIDemoViewController *vc = [SIDemoViewController new];
    
    vc.hidesBottomBarWhenPushed = YES;
    
    [self.navigationController pushViewController:vc animated:YES];
    
    
}

#pragma mark - UITableViewDatasource
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return _statusList.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellId forIndexPath:indexPath];
    
    cell.textLabel.text = _statusList[indexPath.row];
    
    return cell;
}

#pragma mark - 设置界面
- (void)setupUI {
    [super setupUI];
    
    self.navItem.leftBarButtonItem = [UIBarButtonItem cz_textBarButtonItem:@"好友" fontSize:16 target:self action:@selector(showFriends) isBack:NO];
    
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:cellId];
    
    
}

@end

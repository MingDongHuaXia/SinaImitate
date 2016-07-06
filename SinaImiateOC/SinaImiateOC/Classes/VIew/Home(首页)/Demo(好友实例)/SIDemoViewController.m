//
//  SIDemoViewController.m
//  SinaImiateOC
//
//  Created by xiaoming on 16/7/4.
//  Copyright © 2016年 GoodJob. All rights reserved.
//

#import "SIDemoViewController.h"

@interface SIDemoViewController ()

@end

@implementation SIDemoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navItem.title = [NSString stringWithFormat:@"第 %zd 个", self.navigationController.childViewControllers.count - 1];
    

    
}

#pragma mark - 右侧barButtonItem的监听方法 pushNext
- (void)pushNext {
    SIDemoViewController *vc = [SIDemoViewController new];
    
    [self.navigationController pushViewController:vc animated:YES];
}

#pragma mark - 设置界面
- (void)setupUI {
    [super setupUI];
    
    self.view.backgroundColor = [UIColor cyanColor];
    
//    UIButton *btn = [UIButton cz_textButton:@"下一个" fontSize:16 normalColor:[UIColor darkGrayColor] highlightedColor:[UIColor orangeColor]];
//    [btn addTarget:self action:@selector(pushNext) forControlEvents:UIControlEventTouchUpInside];
//    
//    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:btn];  //[[UIBarButtonItem alloc] initWithTitle:@"下一个" style:UIBarButtonItemStylePlain target:self action:@selector(pushNext)];
    
    self.navItem.rightBarButtonItem = [UIBarButtonItem cz_textBarButtonItem:@"下一个" fontSize:16 target:self action:@selector(pushNext) isBack:NO];
    
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

//
//  SINavigationController.m
//  SinaImiateOC
//
//  Created by xiaoming on 16/7/2.
//  Copyright © 2016年 GoodJob. All rights reserved.
//

#import "SINavigationController.h"
#import "SIBaseViewController.h"
#import "UIBarButtonItem+SIAddition.h"

@interface SINavigationController ()

@end

@implementation SINavigationController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationBar.hidden = YES;
}

#pragma mark - 返回 监听方法实现
- (void)popVC {
    [self popViewControllerAnimated:YES];
}

- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated {
    [super pushViewController:viewController animated:animated];
    
    /**
     *  如果控制器数量大于一说明push了,隐藏底部栏
     */
    if (self.childViewControllers.count > 1) {
#warning 暂时留个坑,后期测试解决
        viewController.hidesBottomBarWhenPushed = YES;
    
        if ([viewController isKindOfClass:[SIBaseViewController class]]) {
            
            SIBaseViewController *vc = (SIBaseViewController *)viewController;
            
            
            vc.navItem.leftBarButtonItem = [UIBarButtonItem cz_textBarButtonItem:@"返回" fontSize:16 target:self action:@selector(popVC) isBack:YES];
            
        }
        
        
    }
    
}

@end
        

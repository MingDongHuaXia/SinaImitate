//
//  SINavigationController.m
//  SinaImiateOC
//
//  Created by xiaoming on 16/7/2.
//  Copyright © 2016年 GoodJob. All rights reserved.
//

#import "SINavigationController.h"

@interface SINavigationController ()

@end

@implementation SINavigationController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationBar.hidden = YES;
}

- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated {
    [super pushViewController:viewController animated:animated];
    
    if (self.childViewControllers.count > 1) {
#warning 暂时留个坑,一会过来解决
        viewController.hidesBottomBarWhenPushed = YES;
        
    }
    
}

@end

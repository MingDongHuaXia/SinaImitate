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
    // Do any additional setup after loading the view.
}

- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated {
    [super pushViewController:viewController animated:animated];
    
    if (self.childViewControllers.count > 0) {
        
        viewController.hidesBottomBarWhenPushed = true;
        
    }
    
}

@end

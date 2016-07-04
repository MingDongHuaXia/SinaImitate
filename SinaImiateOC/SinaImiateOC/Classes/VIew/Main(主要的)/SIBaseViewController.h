//
//  SIBaseViewController.h
//  SinaImiateOC
//
//  Created by xiaoming on 16/7/2.
//  Copyright © 2016年 GoodJob. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SIBaseViewController : UIViewController

@property (nonatomic, strong) UINavigationBar *navigationBar;

@property (nonatomic, strong) UINavigationItem *navItem;

- (void)setupUI;

@end

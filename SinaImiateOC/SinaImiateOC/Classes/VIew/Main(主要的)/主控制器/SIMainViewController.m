//
//  SIMainViewController.m
//  SinaImiateOC
//
//  Created by xiaoming on 16/7/2.
//  Copyright © 2016年 GoodJob. All rights reserved.
//

#import "SIMainViewController.h"

@interface SIMainViewController ()

@property (nonatomic, strong) UIButton *composeButton;

@end

@implementation SIMainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    [self addChildControllers];
    
    [self setupComposeButton];
    
}

#pragma mark - 设置中间撰写按钮
/**
 *  懒加载
 */
- (UIButton *)composeButton {
    if (_composeButton == nil) {
        UIButton *btn = [UIButton cz_imageButton:@"tabbar_compose_icon_add" backgroundImageName:@"tabbar_compose_button"];
        
        _composeButton = btn;
    }
    
    return _composeButton;
}

- (void)setupComposeButton {
    
    [self.tabBar addSubview:self.composeButton];
    
    CGFloat count = self.childViewControllers.count;
    
    NSInteger w = self.tabBar.bounds.size.width / count - 1;
    
    _composeButton.frame = CGRectInset(self.tabBar.bounds, 2 * w, 0);
    
    
    
    
}

#pragma mark - 搭建子控制器数组
- (void)addChildControllers {
    
    NSArray *array = @[@{@"clsName": @"SIHomeViewController", @"title": @"首页", @"imageName": @"home"},
                       @{@"clsName": @"SIMessageViewController", @"title": @"消息", @"imageName": @"message_center"},
                       @{@"clsName": @""},
                       @{@"clsName": @"SIDiscoverViewController", @"title": @"发现", @"imageName": @"discover"},
                       @{@"clsName": @"SIProfileViewController", @"title": @"我", @"imageName": @"profile"},
                       ];
    
    NSMutableArray *arrayM = [NSMutableArray array];
    
    for (NSDictionary *dict in array) {
        
        [arrayM addObject:[self setupSingleControllerWithDict:dict]];
        
    }
    
    
    self.viewControllers = arrayM.copy;
    
    
}

#pragma mark - 添加一个控制器
- (UIViewController *)setupSingleControllerWithDict:(NSDictionary *)dict {
    
    NSString *clsName = dict[@"clsName"];
    
    if (clsName == nil) {
        return [UIViewController new];
    }
    
    Class cls = NSClassFromString(clsName);
    
    UIViewController *vc = [cls new];
    
    vc.title = dict[@"title"];
    
    NSString *imageName = dict[@"imageName"];
    
    vc.tabBarItem.image = [UIImage imageNamed:[NSString stringWithFormat:@"tabbar_%@", imageName]];
    vc.tabBarItem.selectedImage = [[UIImage imageNamed:[NSString stringWithFormat:@"tabbar_%@_selected", imageName]] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    [vc.tabBarItem setTitleTextAttributes:@{NSFontAttributeName: [UIFont systemFontOfSize:13]} forState:UIControlStateNormal];
    [vc.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor orangeColor]} forState:UIControlStateHighlighted];
    
    
    return [[UINavigationController alloc] initWithRootViewController:vc];
    
}


@end

//
//  UIBarButtonItem+SIAddition.m
//  SinaImiateOC
//
//  Created by xiaoming on 16/7/4.
//  Copyright © 2016年 GoodJob. All rights reserved.
//

#import "UIBarButtonItem+SIAddition.h"

@implementation UIBarButtonItem (SIAddition)


+ (instancetype)cz_textBarButtonItem:(NSString *)title fontSize:(CGFloat)fontSize target:(id)target action:(SEL)action isBack:(BOOL)back {
    
    UIButton *btn = [UIButton cz_textButton:title fontSize:fontSize normalColor:[UIColor darkGrayColor] highlightedColor:[UIColor orangeColor]];
    
    if (back) {
        NSString *imageName = @"navigationbar_back_withtext";
        
        [btn setImage:[UIImage imageNamed:imageName] forState:UIControlStateNormal];
        
        [btn setImage:[UIImage imageNamed:[NSString stringWithFormat:@"%@_highlighted", imageName]] forState:UIControlStateHighlighted];
        [btn sizeToFit];
        
    }
    
    [btn addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    
    
    return [[UIBarButtonItem alloc] initWithCustomView:btn];
}

@end

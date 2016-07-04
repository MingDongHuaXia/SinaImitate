//
//  UIBarButtonItem+SIAddition.m
//  SinaImiateOC
//
//  Created by xiaoming on 16/7/4.
//  Copyright © 2016年 GoodJob. All rights reserved.
//

#import "UIBarButtonItem+SIAddition.h"

@implementation UIBarButtonItem (SIAddition)


+ (instancetype)cz_textBarButtonItem:(NSString *)title fontSize:(CGFloat)fontSize target:(id)target action:(SEL)action {
    
    UIButton *btn = [UIButton cz_textButton:title fontSize:fontSize normalColor:[UIColor darkGrayColor] highlightedColor:[UIColor orangeColor]];
    
    [btn addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    
    
    return [[UIBarButtonItem alloc] initWithCustomView:btn];
}

@end

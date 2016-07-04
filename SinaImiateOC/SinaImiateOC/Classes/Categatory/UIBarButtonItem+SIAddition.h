//
//  UIBarButtonItem+SIAddition.h
//  SinaImiateOC
//
//  Created by xiaoming on 16/7/4.
//  Copyright © 2016年 GoodJob. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIBarButtonItem (SIAddition)

+ (instancetype)cz_textBarButtonItem:(NSString *)title fontSize:(CGFloat)fontSize target:(id)target action:(SEL)action;

@end

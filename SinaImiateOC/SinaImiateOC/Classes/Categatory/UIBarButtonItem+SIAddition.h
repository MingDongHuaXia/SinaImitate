//
//  UIBarButtonItem+SIAddition.h
//  SinaImiateOC
//
//  Created by xiaoming on 16/7/4.
//  Copyright © 2016年 GoodJob. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIBarButtonItem (SIAddition)

/**
 *  自定义barButtonItem的视图 customView
 *
 *  @param title    文本
 *  @param fontSize 字体大小
 *  @param target   监听者
 *  @param action   监听方法
 *  @param back     是否是返回按钮
 *
 *  @return customView
 */
+ (instancetype)cz_textBarButtonItem:(NSString *)title fontSize:(CGFloat)fontSize target:(id)target action:(SEL)action isBack:(BOOL)back;

@end

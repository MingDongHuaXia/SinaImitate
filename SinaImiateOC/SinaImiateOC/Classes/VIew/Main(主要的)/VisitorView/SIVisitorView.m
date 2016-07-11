//
//  SIVisitorView.m
//  SinaImiateOC
//
//  Created by xiaoming on 16/7/11.
//  Copyright © 2016年 GoodJob. All rights reserved.
//

#import "SIVisitorView.h"

@implementation SIVisitorView

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        
        [self setupUI];
    }
    return self;
}

#pragma mark - 设置界面
- (void)setupUI {
    self.backgroundColor = [UIColor cyanColor];
    
}

@end

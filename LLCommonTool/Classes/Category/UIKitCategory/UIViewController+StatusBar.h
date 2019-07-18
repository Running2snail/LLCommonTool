//
//  UIViewController+StatusBar.h
//  MGYouXuan
//
//  Created by Yeonluu on 2019/5/17.
//  Copyright © 2019 MeiGuang. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIViewController (StatusBar)

/**
 设置状态栏背景颜色

 @param color 背景颜色
 */
- (void)setStatusBarBackgroundColor:(UIColor *)color;

/**
 清除状态栏背景颜色
 */
- (void)clearStatusBarBackgroundColor;

/**
 状态栏背景视图
 注：直接获取状态栏改变颜色的话，若有弹窗会覆盖弹窗，不太美观，故加此属性。
 */
//@property (nonatomic, readonly, strong) UIView *statusBarBackgroundView;


@end

NS_ASSUME_NONNULL_END

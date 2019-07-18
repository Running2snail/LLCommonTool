//
//  UIButton+Init.m
//
//  Created by Yeonluu on 15/1/21.
//  Copyright © 2015年 Yeonluu. All rights reserved.
//

#import "UIButton+Init.h"
#import "UIControl+BlocksKit.h"

@implementation UIButton (Init)

+ (instancetype)buttonWithTitle:(NSString *)title font:(CGFloat)size color:(UIColor *)color image:(NSString *)imageNamed target:(id)target action:(SEL)action eventHandler:(VoidBlock)handler
{
    UIButton *button = [self buttonWithType:UIButtonTypeCustom];
    if (title.length) {
        [button setTitle:title forState:UIControlStateNormal];
    }
    if (size) {
        button.titleLabel.font = [UIFont systemFontOfSize:size];
    }
    if (color) {
        [button setTitleColor:color forState:UIControlStateNormal];
    }
    if (imageNamed.length) {
        [button setImage:[UIImage imageNamed:imageNamed] forState:UIControlStateNormal];
        button.adjustsImageWhenHighlighted = NO;
    }
    if (target && action) {
        [button addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    }
    if (handler) {
        [button bk_addEventHandler:^(id sender) {
            handler();
        } forControlEvents:UIControlEventTouchUpInside];
    }
    return button;
}

#pragma mark - 快速创建文字按钮

+ (instancetype)buttonWithTitle:(NSString *)title font:(CGFloat)size color:(UIColor *)color eventHandler:(VoidBlock)handler
{
    return [self buttonWithTitle:title font:size color:color image:nil target:nil action:nil eventHandler:handler];
}

+ (instancetype)buttonWithTitle:(NSString *)title font:(CGFloat)size color:(UIColor *)color target:(id)target action:(SEL)action
{
    return [self buttonWithTitle:title font:size color:color image:nil target:target action:action eventHandler:nil];
}

#pragma mark - 快速创建图标按钮

+ (instancetype)buttonWithImage:(NSString *)imageNamed eventHandler:(VoidBlock)handler
{
    return [self buttonWithTitle:nil font:0 color:nil image:imageNamed target:nil action:nil eventHandler:handler];
}

+ (instancetype)buttonWithImage:(NSString *)imageNamed target:(id)target action:(SEL)action
{
    return [self buttonWithTitle:nil font:0 color:nil image:imageNamed target:target action:action eventHandler:nil];
}

#pragma mark - 快速创建圆角文字按钮

+ (instancetype)roundCornerButtonWithTitle:(NSString *)title font:(CGFloat)size color:(UIColor *)color eventHandler:(VoidBlock)handler
{
    UIButton *button = [self buttonWithTitle:title font:size color:color image:nil target:nil action:nil eventHandler:handler];
    button.layer.cornerRadius = 4;
    button.layer.borderWidth = 1;
    button.layer.borderColor = color.CGColor;
    return button;
}

+ (instancetype)roundCornerButtonWithTitle:(NSString *)title font:(CGFloat)size color:(UIColor *)color target:(id)target action:(SEL)action
{
    UIButton *button = [self buttonWithTitle:title font:size color:color image:nil target:target action:action eventHandler:nil];
    button.layer.cornerRadius = 4;
    button.layer.borderWidth = 1;
    button.layer.borderColor = color.CGColor;
    return button;
}

+ (instancetype)roundCornerButtonWithTitle:(NSString *)title font:(CGFloat)size backgroundColor:(UIColor *)backgroundColor eventHandler:(VoidBlock)handler
{
    UIButton *button = [self buttonWithTitle:title font:size color:nil image:nil target:nil action:nil eventHandler:handler];
    button.layer.masksToBounds = YES;
    button.layer.cornerRadius = 4;
    [button setBackgroundColor:backgroundColor];
    return button;
}

+ (instancetype)roundCornerButtonWithTitle:(NSString *)title font:(CGFloat)size backgroundColor:(UIColor *)backgroundColor target:(id)target action:(SEL)action
{
    UIButton *button = [self buttonWithTitle:title font:size color:nil image:nil target:target action:action eventHandler:nil];
    button.layer.masksToBounds = YES;
    button.layer.cornerRadius = 4;
    [button setBackgroundColor:backgroundColor];
    return button;
}

@end

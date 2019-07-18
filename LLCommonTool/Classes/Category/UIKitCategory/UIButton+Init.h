//
//  UIButton+Init.h
//
//  Created by Yeonluu on 15/1/21.
//  Copyright © 2015年 Yeonluu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIButton (Init)

#pragma mark - 快速创建文字按钮

/**
 创建普通文字按钮
 
 @param title  标题
 @param size   字号
 @param color  字色
 @param handler 点击事件回调
 */
+ (instancetype)buttonWithTitle:(NSString *)title font:(CGFloat)size color:(UIColor *)color eventHandler:(VoidBlock)handler;

/**
 创建普通文字按钮
 
 @param title  标题
 @param size   字号
 @param color  字色
 @param target 事件处理对象
 @param action 点击事件
 */
+ (instancetype)buttonWithTitle:(NSString *)title font:(CGFloat)size color:(UIColor *)color target:(id)target action:(SEL)action;


#pragma mark - 快速创建图标按钮

/**
 创建普通图标按钮
 
 @param imageNamed  本地图片名
 @param handler 点击事件回调
 */
+ (instancetype)buttonWithImage:(NSString *)imageNamed eventHandler:(VoidBlock)handler;

/**
 创建普通图标按钮
 
 @param imageNamed  本地图片名
 @param target 事件处理对象
 @param action 点击事件
 */
+ (instancetype)buttonWithImage:(NSString *)imageNamed target:(id)target action:(SEL)action;

#pragma mark - 快速创建圆角文字按钮

/**
 创建带圆角的线框背景文字按钮 默认cornerRadius=4，borderWidth=1，borderColor=font
 Color
 
 @param title  标题
 @param size   字号
 @param color  字色
 @param target 事件处理对象
 @param action 点击事件
 */
+ (instancetype)roundCornerButtonWithTitle:(NSString *)title font:(CGFloat)size color:(UIColor *)color target:(id)target action:(SEL)action;

/**
 创建带圆角的线框背景文字按钮 默认cornerRadius=4，borderWidth=1，borderColor=font
 Color
 
 @param title  标题
 @param size   字号
 @param color  字色
 @param handler 点击事件回调
 */
+ (instancetype)roundCornerButtonWithTitle:(NSString *)title font:(CGFloat)size color:(UIColor *)color eventHandler:(VoidBlock)handler;

/**
 创建带圆角的纯色背景文字按钮 默认titleColor=whiteColor，cornerRadius=4
 
 @param title  标题
 @param size   字号
 @param backgroundColor 背景颜色
 @param target 事件处理对象
 @param action 点击事件
 */
+ (instancetype)roundCornerButtonWithTitle:(NSString *)title font:(CGFloat)size backgroundColor:(UIColor *)backgroundColor target:(id)target action:(SEL)action;

/**
 创建带圆角的纯色背景文字按钮 默认titleColor=whiteColor，cornerRadius=4
 
 @param title  标题
 @param size   字号
 @param backgroundColor 背景颜色
 @param handler 点击事件回调
 */
+ (instancetype)roundCornerButtonWithTitle:(NSString *)title font:(CGFloat)size backgroundColor:(UIColor *)backgroundColor eventHandler:(VoidBlock)handler;


@end

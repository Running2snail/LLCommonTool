//
//  UIImageView+MGWebImage.h
//  MGYouXuan
//
//  Created by Yeonluu on 2019/4/10.
//  Copyright © 2019 MeiGuang. All rights reserved.
//


#import <UIKit/UIKit.h>

@interface UIImageView (MGWebImage)

/**
 加载网络图片 显示默认占位图
 
 @param string      图片地址
 */
- (void)mg_setImageWithURLString:(NSString *)string;

/**
 加载网络图片

 @param string           图片地址
 @param placeholderImage 占位图
 */
- (void)mg_setImageWithURLString:(NSString *)string placeholderImage:(NSString *)placeholderImage;

/**
 加载网络图片
 
 @param string       图片地址
 @param defaultImage 无url时显示图
 */
- (void)mg_setImageWithURLString:(NSString *)string defaultImage:(NSString *)defaultImage;

/**
 加载网络图片

 @param string           图片地址
 @param placeholderImage 占位图
 @param completed        完成回调
 */
- (void)mg_setImageWithURLString:(NSString *)string placeholderImage:(NSString *)placeholderImage completed:(void (^)(UIImage *, NSError *))completed;

@end

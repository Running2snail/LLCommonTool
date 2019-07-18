//
//  UIImageView+MGWebImage.m
//  MGYouXuan
//
//  Created by Yeonluu on 2019/4/10.
//  Copyright © 2019 MeiGuang. All rights reserved.
//

#import "UIImageView+MGWebImage.h"
#import <SDWebImage/UIImageView+WebCache.h>

@implementation UIImageView (MGWebImage)

// 格式化成正确的URL地址
- (NSURL *)URLWithString:(NSString *)urlString {
    if (!urlString.length) {
        return nil;
    }
    // 自动拼上 http 前缀
    if (![urlString hasPrefix:@"http"]) {
        urlString = [NSString stringWithFormat:@"http:%@", urlString];
    }
    // 将 alicdn 的图片由 http 转为 https
    if ([urlString containsString:@"alicdn"]) {
        urlString = [urlString stringByReplacingOccurrencesOfString:@"http:" withString:@"https:"];
    }
    return [NSURL URLWithString:urlString];
}


- (void)mg_setImageWithURLString:(NSString *)string
{
    [self sd_setImageWithURL:[self URLWithString:string] placeholderImage:[UIImage imageNamed:@"default_icon_placeholder"] options:SDWebImageRetryFailed];
}

- (void)mg_setImageWithURLString:(NSString *)string placeholderImage:(NSString *)imageNamed
{
    UIImage *placeholder = imageNamed ? [UIImage imageNamed:imageNamed] : nil;
    [self sd_setImageWithURL:[self URLWithString:string] placeholderImage:placeholder options:SDWebImageRetryFailed];
}

- (void)mg_setImageWithURLString:(NSString *)string defaultImage:(NSString *)imageNamed
{
    if (string.length) {
        [self mg_setImageWithURLString:string];
    }
    else {
        self.image = [UIImage imageNamed:imageNamed];
    }
}

- (void)mg_setImageWithURLString:(NSString *)string placeholderImage:(NSString *)imageNamed completed:(void (^)(UIImage *, NSError *))completed
{
    [self sd_setImageWithURL:[self URLWithString:string] placeholderImage:[UIImage imageNamed:imageNamed] options:SDWebImageRetryFailed completed:^(UIImage * _Nullable image, NSError * _Nullable error, SDImageCacheType cacheType, NSURL * _Nullable imageURL) {
        
        !completed ? : completed(image, error);
    }];
}


@end

//
//  UILabel+Init.m
//  MGYouXuan
//
//  Created by Yeonluu on 15/8/17.
//  Copyright © 2015年 Yeonluu All rights reserved.
//

#import "UILabel+Init.h"
#import "UIFont+MGFont.h"

@implementation UILabel (Init)

- (instancetype)initWithFont:(UIFont *)font textColor:(UIColor *)color text:(NSString *)text
{
    if (self = [super init]) {
        self.font = font;
        self.textColor = color;
        self.text = text;
    }
    return self;
}

+ (instancetype)labelWithFontSize:(CGFloat)size textColor:(UIColor *)color
{
    return [self labelWithFontSize:size textColor:color text:nil];
}

+ (instancetype)labelWithFontSize:(CGFloat)size textColor:(UIColor *)color text:(NSString *)text
{
    return [[self alloc] initWithFont:[UIFont systemFontOfSize:size] textColor:color text:text];
}

+ (instancetype)labelWithBoldFontSize:(CGFloat)size textColor:(UIColor *)color
{
    return [self labelWithBoldFontSize:size textColor:color text:nil];
}

+ (instancetype)labelWithBoldFontSize:(CGFloat)size textColor:(UIColor *)color text:(NSString *)text
{
    return [[self alloc] initWithFont:[UIFont boldSystemFontOfSize:size] textColor:color text:text];
}

+ (instancetype)labelWithMediumFontSize:(CGFloat)size textColor:(UIColor *)color
{
    return [self labelWithMediumFontSize:size textColor:color text:nil];
}

+ (instancetype)labelWithMediumFontSize:(CGFloat)size textColor:(UIColor *)color text:(NSString *)text
{
    return [[self alloc] initWithFont:MGMediumFont(size) textColor:color text:text];
}

+ (instancetype)labelWithFontName:(NSString *)name size:(CGFloat)size textColor:(UIColor *)color
{
    return [[self alloc] initWithFont:[UIFont fontWithName:name size:size] textColor:color text:nil];
}

@end

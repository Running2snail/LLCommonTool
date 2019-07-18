//
//  UIColor+MGColor.h
//  MGYouXuan
//
//  Created by Yeonluu on 2019/4/4.
//  Copyright © 2019 MeiGuang. All rights reserved.
//

NS_ASSUME_NONNULL_BEGIN

@interface UIColor (MGColor)

// 创建RGB颜色
#define RGB(r, g, b)        [UIColor colorWithRed:r/255.0f green:g/255.0f blue:b/255.0f alpha:1.0f]
#define RGBA(r, g, b, a)    [UIColor colorWithRed:r/255.0f green:g/255.0f blue:b/255.0f alpha:a]
#define RGBRANDOM RGB(arc4random_uniform(256), arc4random_uniform(256), arc4random_uniform(256))

// 创建HEX颜色
#define HEXCOLOR(value)     [UIColor colorWithHex:value]
#define HEXACOLOR(value, a) [UIColor colorWithHex:value alpha:a]


/**
 [UIColor mgBlackColor] 黑色
 */
+ (UIColor *)mgBlackColor;

/**
 RGB(254, 26, 63) 红色
 */
+ (UIColor *)mgRedColor;

/**
 RGB(234, 72, 73) 淡红色
 */
+ (UIColor *)mgLightRedColor;

/**
 16进制颜色 如：0xfffff
 */
+ (UIColor *)colorWithHex:(NSInteger)hexValue;

/**
 16进制颜色 如：0xfffff
 */
+ (UIColor *)colorWithHex:(NSInteger)hexValue alpha:(CGFloat)alphaValue;


@end

NS_ASSUME_NONNULL_END

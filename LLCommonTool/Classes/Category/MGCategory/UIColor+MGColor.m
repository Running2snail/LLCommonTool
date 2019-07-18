//
//  UIColor+MGColor.m
//  MGYouXuan
//
//  Created by Yeonluu on 2019/4/4.
//  Copyright © 2019 MeiGuang. All rights reserved.
//

#import "UIColor+MGColor.h"

@implementation UIColor (MGColor)

+ (UIColor *)mgBlackColor {
    return RGB(64, 64, 64);
}

+ (UIColor *)mgRedColor {
    return RGB(254, 26, 63);
}

+ (UIColor *)mgLightRedColor {
    return RGB(234, 72, 73);
}

+ (UIColor *)colorWithHex:(NSInteger)hexValue alpha:(CGFloat)alphaValue
{
    return [UIColor colorWithRed:((float)((hexValue & 0xFF0000) >> 16))/255.0
                           green:((float)((hexValue & 0xFF00) >> 8))/255.0
                            blue:((float)(hexValue & 0xFF))/255.0 alpha:alphaValue];
}

+ (UIColor *)colorWithHex:(NSInteger)hexValue
{
    return [UIColor colorWithHex:hexValue alpha:1.0];
}

@end

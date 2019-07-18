//
//  UIFont+MGFont.m
//  MGYouXuan
//
//  Created by wangll on 2019/4/9.
//  Copyright © 2019年 MeiGuang. All rights reserved.
//

#import "UIFont+MGFont.h"

@implementation UIFont (MGFont)

/**
 *  苹方极细体
 *  @param fontSize 字体大小
 */
+(instancetype)fontOfPingFangSC_UltralightWithSize:(CGFloat)fontSize
{
    return [UIFont fontWithName:@"PingFangSC-Ultralight" size:fontSize];
}

/**
 *  苹方常规体
 *  @param fontSize 字体大小
 */
+(instancetype)fontOfPingFangSC_RegularWithSize:(CGFloat)fontSize
{
    return [UIFont fontWithName:@"PingFangSC-Regular" size:fontSize];
}

/**
 *  苹方中粗体
 *  @param fontSize 字体大小
 */
+(instancetype)fontOfPingFangSC_SemiboldWithSize:(CGFloat)fontSize
{
    return [UIFont fontWithName:@"PingFangSC-Semibold" size:fontSize];
}

/**
 *  苹方纤细体
 *  @param fontSize 字体大小
 */
+(instancetype)fontOfPingFangSC_ThinFontWithSize:(CGFloat)fontSize
{
    return [UIFont fontWithName:@"PingFangSC-Thin" size:fontSize];
}

/**
 *  苹方细体
 *  @param fontSize 字体大小
 */
+(instancetype)fontOfPingFangSC_LightFontWithSize:(CGFloat)fontSize
{
    return [UIFont fontWithName:@"PingFangSC-Light" size:fontSize];
}

/**
 *  苹方中黑体
 *  @param fontSize 字体大小
 */
+(instancetype)fontOfPingFangSC_MediumFontWithSize:(CGFloat)fontSize
{
    return [UIFont fontWithName:@"PingFangSC-Medium" size:fontSize];
}


@end

//
//  UIFont+NLFont.m
//  Cashier
//
//  Created by wanglonglong on 2019/1/4.
//  Copyright © 2019年 杭州辛巴供应链管理有限公司. All rights reserved.
//

#import "UIFont+NLFont.h"

@implementation UIFont (NLFont)

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

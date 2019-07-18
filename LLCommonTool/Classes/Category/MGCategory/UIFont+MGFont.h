//
//  UIFont+MGFont.h
//  MGYouXuan
//
//  Created by wangll on 2019/4/9.
//  Copyright © 2019年 MeiGuang. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

/**设置系统的字体大小*/
#define MGFont(size)           [UIFont systemFontOfSize:size]
#define MGBoldFont(size)       [UIFont boldSystemFontOfSize:size]
// 常规
#define MGRegularFont(size)     [UIFont fontOfPingFangSC_RegularWithSize:size]
/** 极细体 */
#define MGUltralightFont(size) [UIFont fontOfPingFangSC_UltralightWithSize:size]
/** 纤细体 */
#define MGThinFont(size)       [UIFont fontOfPingFangSC_ThinFontWithSize:size]
/** 细体 */
#define MGLightFont(size)      [UIFont fontOfPingFangSC_LightFontWithSize:size]
// 中等
#define MGMediumFont(size)     [UIFont fontOfPingFangSC_MediumFontWithSize:size]
/** 中粗体 */
#define MGSemiboldFont(size)   [UIFont fontOfPingFangSC_SemiboldWithSize:size]

@interface UIFont (MGFont)

/**
 *  苹方常规体
 *  @param fontSize 字体大小
 */
+(instancetype)fontOfPingFangSC_RegularWithSize:(CGFloat)fontSize;


/**
 *  苹方极细体
 *  @param fontSize 字体大小
 */
+(instancetype)fontOfPingFangSC_UltralightWithSize:(CGFloat)fontSize;


/**
 *  苹方纤细体
 *  @param fontSize 字体大小
 */
+(instancetype)fontOfPingFangSC_ThinFontWithSize:(CGFloat)fontSize;


/**
 *  苹方中粗体
 *  @param fontSize 字体大小
 */
+(instancetype)fontOfPingFangSC_SemiboldWithSize:(CGFloat)fontSize;


/**
 *  苹方细体
 *  @param fontSize 字体大小
 */
+(instancetype)fontOfPingFangSC_LightFontWithSize:(CGFloat)fontSize;


/**
 *  苹方中黑体
 *  @param fontSize 字体大小
 */
+(instancetype)fontOfPingFangSC_MediumFontWithSize:(CGFloat)fontSize;


@end

NS_ASSUME_NONNULL_END

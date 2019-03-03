//
//  UIFont+NLFont.h
//  Cashier
//
//  Created by wanglonglong on 2019/1/4.
//  Copyright © 2019年 杭州辛巴供应链管理有限公司. All rights reserved.
//

/**设置系统的字体大小*/
#define NLFont(size)           [UIFont systemFontOfSize:size]
#define NLBoldFont(size)       [UIFont boldSystemFontOfSize:size]
// 常规
#define NLRegularFont(ize)     [UIFont fontOfPingFangSC_RegularWithSize:size]
/** 极细体 */
#define NLUltralightFont(size) [UIFont fontOfPingFangSC_UltralightWithSize:size]
/** 纤细体 */
#define NLThinFont(size)       [UIFont fontOfPingFangSC_ThinFontWithSize:size]
/** 细体 */
#define NLLightFont(size)      [UIFont fontOfPingFangSC_LightFontWithSize:size]
// 中等
#define NLMediumFont(size)     [UIFont fontOfPingFangSC_MediumFontWithSize:size]
/** 中粗体 */
#define NLSemiboldFont(size)   [UIFont fontOfPingFangSC_SemiboldWithSize:size]

#import <UIKit/UIKit.h>

@interface UIFont (NLFont)

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

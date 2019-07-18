//
//  UIImage+Size.h
//  MGYouXuan
//
//  Created by wangll on 2019/6/21.
//  Copyright © 2019 MeiGuang. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIImage (Size)

/**
 *  根据图片url获取图片尺寸
 */
+ (CGSize)getImageSizeWithURL:(NSString *)urlStr;

@end

NS_ASSUME_NONNULL_END

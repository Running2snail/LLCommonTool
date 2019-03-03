//
//  ColorFromHexRGB.h
//  goldenname
//
//  Created by Tom on 13-7-11.
//  Copyright (c) 2013年 Tom. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ColorUtil : NSObject

+ (UIColor *)colorFromHexRGB:(NSString *)inColorString;
+ (UIColor *)colorFromR:(float)R G:(float)G B:(float)B alpha: (float) a;
/**
 *	@brief	更改image的大小
 *
 *	@param 	image 	原来image
 *	@param 	reSize 	更改后的大小
 *
 *	@return	更改大小后的image
 */
+ (UIImage *)reSizeImage:(UIImage *)image toSize:(CGSize)reSize;
+ (UIImage *)imageWithColor:(UIColor *)color size:(CGSize)size;
+ (UIColor *) colorFromHexRGB:(NSString *) inColorString withAlpha:(float)a;
@end

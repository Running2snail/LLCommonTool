//
//  NSString+Encode.h
//  MGYouXuan
//
//  Created by wangll on 2019/5/28.
//  Copyright © 2019 MeiGuang. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSString (Encode)


/**
 url编码
 
 @param input 原码串
 @return 返回编码串
 */
+ (NSString *)encodeToPercentEscapeString: (NSString *)input;

/**
 url编码（用在二维码编码）
 
 @param input 编码串
 @return 返回编码串
 */
+ (NSString *)encodeToQRCodePercentEscapeString: (NSString *)input;

/**
 url解码
 
 @param input 原码串
 @return 返回解码串
 */
+ (NSString *)urlDecodedString:(NSString *)input;

/**
 md5解码
 
 @param input 原码串
 @return 返回md5值
 */
+ (NSString *)md5ForString:(NSString *)input;


- (NSURL *)urlScheme:(NSString *)scheme;


@end

NS_ASSUME_NONNULL_END

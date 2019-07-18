//
//  NSString+Encode.m
//  MGYouXuan
//
//  Created by wangll on 2019/5/28.
//  Copyright © 2019 MeiGuang. All rights reserved.
//

#import "NSString+Encode.h"
#import <CommonCrypto/CommonDigest.h>

@implementation NSString (Encode)


/**
 url编码
 
 @param input 编码串
 @return 返回编码串
 */
+ (NSString *)encodeToPercentEscapeString: (NSString *) input
{
    NSString *outputStr = (__bridge NSString *)CFURLCreateStringByAddingPercentEscapes(
                                                                             
                                                                             
                 NULL, /* allocator */
                 
                 (__bridge CFStringRef)input,
                 
                 NULL, /* charactersToLeaveUnescaped */
                 
                 (CFStringRef)@"!*'();:@&=+$,/?%#[]",
                 
                 kCFStringEncodingUTF8);
    CFRelease((__bridge CFTypeRef)(outputStr));
    return
    outputStr;
}

/**
 url编码（用在二维码编码）
 
 @param input 编码串
 @return 返回编码串
 */
+ (NSString *)encodeToQRCodePercentEscapeString: (NSString *)input
{
    NSString *
    outputStr = (__bridge NSString *)CFURLCreateStringByAddingPercentEscapes(
                                                                            
                 NULL, /* allocator */
                 
                 (__bridge CFStringRef)input,
                 
                 NULL, /* charactersToLeaveUnescaped */
                 
                 (CFStringRef)@"!*'();:@&=+$,?%#[]",
                 
                 kCFStringEncodingUTF8);
    CFRelease((__bridge CFTypeRef)(outputStr));
    return outputStr;
}

/**
 url解码
 
 @param input 原码串
 @return 返回解码串
 */
+ (NSString *)urlDecodedString:(NSString *)input
{
    // 首先替换+为空格，保证解码正常
    input = [input stringByReplacingOccurrencesOfString:@"+" withString:@" "];
    NSString *decodedString=(__bridge_transfer NSString *)CFURLCreateStringByReplacingPercentEscapesUsingEncoding(NULL, (__bridge CFStringRef)input, CFSTR(""), CFStringConvertNSStringEncodingToEncoding(NSUTF8StringEncoding));
    
    return decodedString;
}

/**
 md5解码
 
 @param input 原码串
 @return 返回md5值
 */
+ (NSString *)md5ForString:(NSString *)input
{
    const char *str = input.UTF8String;
    if (str == NULL) {
        str = "";
    }
    unsigned char r[CC_MD5_DIGEST_LENGTH];
    CC_MD5(str, (CC_LONG)strlen(str), r);
    NSMutableString * ret = [NSMutableString stringWithCapacity:CC_MD5_DIGEST_LENGTH];
    for (int i = 0; i < CC_MD5_DIGEST_LENGTH; i++) {
        /**
         X 表示以十六进制形式输入/输出
         02 表示不足两位，前面补0输出；出过两位不影响
         printf("%02X", 0x123); //打印出：123
         printf("%02X", 0x1); //打印出：01
         */
        [ret appendFormat:@"%02X",r[i]];
    }
    //返回一个长度为32的字符串
    return ret;
}

- (NSURL *)urlScheme:(NSString *)scheme
{
    NSURLComponents *components = [[NSURLComponents alloc] initWithURL:[NSURL URLWithString:self] resolvingAgainstBaseURL:NO];
    components.scheme = scheme;
    return [components URL];
}


@end

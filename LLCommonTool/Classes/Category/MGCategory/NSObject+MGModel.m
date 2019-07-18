//
//  NSObject+MGModel.m
//  MGYouXuan
//
//  Created by Yeonluu on 2019/4/30.
//  Copyright © 2019 MeiGuang. All rights reserved.
//

#import "NSObject+MGModel.h"

@implementation NSObject (MGModel)

+ (NSString *)mj_replacedKeyFromPropertyName121:(NSString *)propertyName
{
    if ([self respondsToSelector:@selector(mj_replacedKeyFromPropertyName)]) {
        NSString *key = [self mj_replacedKeyFromPropertyName][propertyName];
        return key.length ? key : [propertyName mj_firstCharUpper];
    }
    return [propertyName mj_firstCharUpper];
}


@end

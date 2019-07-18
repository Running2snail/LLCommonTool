//
//  NSArray+SafeObject.h
//  YLKit
//
//  Created by Yeonluu on 16/4/14.
//  Copyright © 2016年 Yeonluu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NSArray (SafeObject)

/**
 *  避免数组越界导致奔溃
 */
- (id)mg_objectAtIndex:(NSUInteger)index;

/**
 *  获取NSInteger值
 */
- (NSInteger)mg_integerAtIndex:(NSUInteger)index;

/**
 *  获取CGFloat值
 */
- (CGFloat)mg_floatAtIndex:(NSUInteger)index;

@end

@interface NSMutableArray (SafeObject)

/**
 *  避免添加nil导致奔溃
 */
- (void)mg_addObject:(id)anObejct;

/**
 *  避免插入nil导致奔溃
 */
- (void)mg_insertObject:(id)anObject atIndex:(NSUInteger)index;

@end

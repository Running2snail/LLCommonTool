//
//  NSArray+SafeObject.m
//  YLKit
//
//  Created by Yeonluu on 16/4/14.
//  Copyright © 2016年 Yeonluu. All rights reserved.
//

#import "NSArray+SafeObject.h"

@implementation NSArray (SafeObject)


- (id)mg_objectAtIndex:(NSUInteger)index
{
    if (index >= self.count) {
        return nil;
    }
    return [self objectAtIndex:index];
}


- (NSInteger)mg_integerAtIndex:(NSUInteger)index
{
    return [[self mg_objectAtIndex:index] integerValue];
}


- (CGFloat)mg_floatAtIndex:(NSUInteger)index
{
    return [[self mg_objectAtIndex:index] doubleValue];
}


@end


@implementation NSMutableArray (SafeObject)


- (void)mg_addObject:(id)anObejct
{
    if (anObejct) {
        [self addObject:anObejct];
    }
}

- (void)mg_insertObject:(id)anObject atIndex:(NSUInteger)index
{
    if (anObject && index <= self.count) {
        [self insertObject:anObject atIndex:index];
    }
}


@end


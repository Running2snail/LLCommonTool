//
//  UIView+AddSubview.m
//  MGYouXuan
//
//  Created by Yeonluu on 15/10/13.
//  Copyright © 2015年 MeiGuang. All rights reserved.
//

#import "UIView+AddSubview.h"

@implementation UIView (AddSubview)

- (void)addSubviews:(NSArray *)subviews
{
    for (UIView *view in subviews) {
        [self addSubview:view];
    }
}

@end

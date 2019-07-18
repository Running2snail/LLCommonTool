//
//  UILabel+TextSize.m
//  MGYouXuan
//
//  Created by Yeonluu on 16/1/8.
//  Copyright © 2016年 Yeonluu. All rights reserved.
//

#import "UILabel+TextSize.h"
#import "NSString+Size.h"

@implementation UILabel (TextSize)

- (CGFloat)textWidth
{
    return [self.text getWidthWithFont:self.font limitHeight:self.frame.size.height];
}

- (CGFloat)textHeight
{
    return [self.text getHeightWithFont:self.font limitWidth:self.frame.size.width];
}

- (CGFloat)attributedTextWidth
{
    return [self.attributedText getWidthWithLimitHeight:self.frame.size.height];
}

- (CGFloat)attributedTextHeight
{
    return [self.attributedText getHeightWithLimitWidth:self.frame.size.width];
}
@end

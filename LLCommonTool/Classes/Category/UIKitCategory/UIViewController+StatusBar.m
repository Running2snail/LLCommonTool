//
//  UIViewController+StatusBar.m
//  MGYouXuan
//
//  Created by Yeonluu on 2019/5/17.
//  Copyright © 2019 MeiGuang. All rights reserved.
//

#import "UIViewController+StatusBar.h"
static const char statusBarBackgroundViewKey = '\0';

@implementation UIViewController (StatusBarBackgroundColor)

- (void)setStatusBarBackgroundColor:(UIColor *)color {
    if (!color) {
        [self clearStatusBarBackgroundColor];
        return;
    }
    UIView *backgroundView = self.statusBarBackgroundView;
    if (!backgroundView) {
        backgroundView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, SCREEN_STATUS_HEIGHT)];
        self.statusBarBackgroundView = backgroundView;
    }
    backgroundView.backgroundColor = color;
    [[UIApplication sharedApplication].keyWindow addSubview:backgroundView];
}

- (void)clearStatusBarBackgroundColor {
    [self.statusBarBackgroundView removeFromSuperview];
    self.statusBarBackgroundView = nil;
}

- (UIView *)statusBarBackgroundView {
    return objc_getAssociatedObject(self, &statusBarBackgroundViewKey);
}

- (void)setStatusBarBackgroundView:(UIView *)backgroundView {
    objc_setAssociatedObject(self, &statusBarBackgroundViewKey, backgroundView, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

@end

//
//  UIResponder+First.m
//  MGYouXuan
//
//  Created by Yeonluu on 15/12/8.
//  Copyright © 2015年 Yeonluu. All rights reserved.
//

#import "UIResponder+First.h"
#import "MGViewControllerHelper.h"

@implementation UIResponder (First)

- (UIViewController *)currentViewController
{
    UIViewController *controller = [self findFirstControllerWithTargetClass:[UIViewController class]];
    return controller ? controller : [MGViewControllerHelper visibleViewController];
}

- (UINavigationController *)currentNavigationContoller
{
//    UINavigationController *controller = (UINavigationController *)[self findFirstControllerWithTargetClass:[UINavigationController class]];
//    return controller;
    return [MGViewControllerHelper navigationController];
}

- (UIViewController *)findFirstControllerWithTargetClass:(Class)aClass
{
    UIViewController *controller = (UIViewController *)[self findFirstWithResponder:self.nextResponder tragetClass:aClass];
    return controller;
}

- (UIResponder *)findFirstWithResponder:(UIResponder *)responder tragetClass:(Class)class
{
    static NSInteger findTimes = 0;
    if ([responder isKindOfClass:class]) {
        findTimes = 0;
        return responder;
    }
    else if (findTimes >= 15) { // 最多只查找15次
        findTimes = 0;
        return nil;
    }
    else {
        findTimes ++;
        return [self findFirstWithResponder:responder.nextResponder tragetClass:class];
    }
}

@end

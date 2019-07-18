//
//  UIAlertController+Init.m
//  MGYouXuan
//
//  Created by Yeonluu on 2019/5/27.
//  Copyright © 2019 MeiGuang. All rights reserved.
//

#import "UIAlertController+Init.h"
#import "MGAlertManager.h"

@implementation UIAlertController (Init)

- (void)show
{
    UIWindow *win = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    UIViewController *vc = [[UIViewController alloc] init];
    vc.view.backgroundColor = [UIColor clearColor];
    win.rootViewController = vc;
    win.windowLevel = UIWindowLevelAlert + 1;
    [win makeKeyAndVisible];
    [vc presentViewController:self animated:YES completion:nil];
}

- (void)dismiss {
    [self dismissViewControllerAnimated:YES completion:nil];
}

+ (void)showMessage:(NSString *)message submitTitle:(nullable NSString *)submitTitle submitBlock:(nullable VoidBlock)submitBlock cancelTitle:(nullable NSString *)cancelTitle cancelBlock:(nullable VoidBlock)cancelBlock {
    
    [self dismissVisibleAlertController];
    
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:nil message:message preferredStyle:UIAlertControllerStyleAlert];
    [MGAlertManager sharedManager].visibleAlertController = alertController;
    
    // 取消按钮一定有
    [alertController addAction:[UIAlertAction actionWithTitle:cancelTitle style:UIAlertActionStyleCancel handler:^(UIAlertAction *action) {
        if (cancelBlock) {
            cancelBlock();
        }
        [MGAlertManager sharedManager].visibleAlertController = nil;
    }]];
    
    if (submitTitle.length) {
        [alertController addAction:[UIAlertAction actionWithTitle:submitTitle style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
            if (submitBlock) {
                submitBlock();
            }
            [MGAlertManager sharedManager].visibleAlertController = nil;
        }]];
    }
    [alertController show];
}

+ (void)showMessage:(NSString *)message submitTitle:(NSString *)submitTitle submitBlock:(VoidBlock)submitBlock
{
    [self showMessage:message submitTitle:submitTitle submitBlock:submitBlock cancelTitle:@"取消" cancelBlock:nil];
}

+ (void)showMessage:(NSString *)message cancelTitle:(NSString *)cancelTitle cancelBlock:(VoidBlock)cancelBlock
{
    [self showMessage:message submitTitle:nil submitBlock:nil cancelTitle:cancelTitle cancelBlock:cancelBlock];
}

+ (void)showTextFieldWithConfigurationHandler:(void(^)(UITextField *textField))configurationHandler title:(NSString *)title submitTitle:(NSString *)submitTitle submitBlock:(void(^)(NSString *text))submitBlock
{
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:title message:nil preferredStyle:UIAlertControllerStyleAlert];
    [MGAlertManager sharedManager].visibleAlertController = alertController;
    
    [alertController addTextFieldWithConfigurationHandler:^(UITextField *textField) {
        if (configurationHandler) {
            configurationHandler(textField);
        }
    }];
    
    UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:@"取消" style:UIAlertActionStyleCancel handler:^(UIAlertAction *action) {
        [MGAlertManager sharedManager].visibleAlertController = nil;
    }];
    [alertController addAction:cancelAction];
    
    UIAlertAction *submitAction = [UIAlertAction actionWithTitle:submitTitle style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
        [MGAlertManager sharedManager].visibleAlertController = nil;
        if (submitBlock) {
            submitBlock([alertController.textFields[0] text]);
        }
    }];
    [alertController addAction:submitAction];
    [alertController show];
}

+ (void)dismissVisibleAlertController
{
    [[MGAlertManager sharedManager].visibleAlertController dismiss];
    [MGAlertManager sharedManager].visibleAlertController = nil;
}

@end

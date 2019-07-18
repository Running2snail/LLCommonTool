//
//  UICollectionView+Register.m
//  MGYouXuan
//
//  Created by Yeonluu on 2017/5/26.
//  Copyright © 2017年 Yeonluu. All rights reserved.
//

#import "UICollectionView+Register.h"

@implementation UICollectionView (Init)

- (instancetype)initWithLayout:(UICollectionViewLayout *)layout delegate:(id<UICollectionViewDelegate>)delegate dataSource:(id<UICollectionViewDataSource>)dataSource
{
    if (self = [self initWithFrame:CGRectZero collectionViewLayout:layout]) {
        self.delegate = delegate;
        self.dataSource = dataSource;
        self.showsHorizontalScrollIndicator = NO;
        self.showsVerticalScrollIndicator = NO;
        self.backgroundColor = [UIColor whiteColor];
        self.keyboardDismissMode = UIScrollViewKeyboardDismissModeOnDrag;
        if (@available(iOS 11.0, *)) {
            self.contentInsetAdjustmentBehavior = UIScrollViewContentInsetAdjustmentNever;
        }
    }
    return self;
}

@end

@implementation UICollectionView (Register)

- (void)registerCellClass:(nullable Class)cellClass
{
    [self registerClass:cellClass forCellWithReuseIdentifier:NSStringFromClass(cellClass)];
}

- (void)registerCellClasses:(nullable NSArray *)cellClasses
{
    for (Class class in cellClasses) {
        [self registerCellClass:class];
    }
}

- (void)registerHeaderViewClass:(nullable Class)viewClass
{
    [self registerClass:viewClass forSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:NSStringFromClass(viewClass)];
}

- (void)registerFooterViewClass:(nullable Class)viewClass
{
    [self registerClass:viewClass forSupplementaryViewOfKind:UICollectionElementKindSectionFooter withReuseIdentifier:NSStringFromClass(viewClass)];
}

- (nullable __kindof UICollectionViewCell *)dequeueReusableCellWithClass:(nullable Class)cellClass forIndexPath:(nullable NSIndexPath *)indexPath
{
    return [self dequeueReusableCellWithReuseIdentifier:NSStringFromClass(cellClass) forIndexPath:indexPath];
}

- (nullable __kindof UICollectionReusableView *)dequeueReusableHeaderViewWithClass:(nullable Class)viewClass forIndexPath:(nullable NSIndexPath *)indexPath
{
    return [self dequeueReusableSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:NSStringFromClass(viewClass) forIndexPath:indexPath];
}

- (nullable __kindof UICollectionReusableView *)dequeueReusableFooterViewWithClass:(nullable Class)viewClass forIndexPath:(nullable NSIndexPath *)indexPath
{
    return [self dequeueReusableSupplementaryViewOfKind:UICollectionElementKindSectionFooter withReuseIdentifier:NSStringFromClass(viewClass) forIndexPath:indexPath];
}

@end


@implementation NSIndexPath (Item)

+ (nullable instancetype)indexPathForItem:(NSInteger)item
{
    return [self indexPathForItem:item inSection:0];
}

@end

//
//  UIView+ZWExtension.h
//  百思不得姐
//
//  Created by rayootech on 16/7/3.
//  Copyright © 2016年 rayootech. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (ZWExtension)

@property(nonatomic,assign) CGSize size;

@property(nonatomic,assign) CGFloat width;

@property(nonatomic,assign) CGFloat height;

@property(nonatomic,assign) CGFloat x;

@property(nonatomic,assign) CGFloat y;

/* 在分类中声明@property，只会生成方法的声明，不会生成方法的实现和带有下划线的成员变量*/
@end

//
//  UIBarButtonItem+ZWExtension.m
//  百思不得姐
//
//  Created by rayootech on 16/7/3.
//  Copyright © 2016年 rayootech. All rights reserved.
//

#import "UIBarButtonItem+ZWExtension.h"
#import "UIButton+ZWBlock.h"

@implementation UIBarButtonItem (ZWExtension)

+(instancetype)itemWithImage:(NSString *)image highImage:(NSString *)highImage target:(id)target action:(SEL)action
{
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setBackgroundImage:[UIImage imageNamed:image] forState:UIControlStateNormal];
    [button setBackgroundImage:[UIImage imageNamed:highImage] forState:UIControlStateHighlighted];
    button.size = button.currentBackgroundImage.size;
    [button addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    return [[self alloc]initWithCustomView:button];
}


+(instancetype)itemWithImage:(NSString *)image highImage:(NSString *)highImage actionHandle:(handleBlock)block
{
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setBackgroundImage:[UIImage imageNamed:image] forState:UIControlStateNormal];
    [button setBackgroundImage:[UIImage imageNamed:highImage] forState:UIControlStateHighlighted];
    button.size = button.currentBackgroundImage.size;
    [button handleControlEvent:UIControlEventTouchUpInside withBlock:^{
        if (block) {
            block();
        }
    }];
    
    return [[self alloc]initWithCustomView:button];
}
@end

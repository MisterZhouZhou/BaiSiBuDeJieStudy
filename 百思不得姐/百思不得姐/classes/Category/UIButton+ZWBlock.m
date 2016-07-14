//
//  UIButton+ZWBlock.m
//  百思不得姐
//
//  Created by rayootech on 16/7/3.
//  Copyright © 2016年 rayootech. All rights reserved.
//

#import "UIButton+ZWBlock.h"
#import <objc/runtime.h>

static char charKey;

@implementation UIButton (ZWBlock)

-(void)handleControlEvent:(UIControlEvents)event withBlock:(ActionHandle)block
{
    objc_setAssociatedObject(self, &charKey, block, OBJC_ASSOCIATION_COPY_NONATOMIC);
    [self addTarget:self action:@selector(buttonClick) forControlEvents:UIControlEventTouchUpInside];
}

-(void)buttonClick
{
    ActionHandle block = objc_getAssociatedObject(self, &charKey);
    if (block) {
        block();
    }
}

@end

//
//  UIButton+ZWBlock.h
//  百思不得姐
//
//  Created by rayootech on 16/7/3.
//  Copyright © 2016年 rayootech. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void(^ActionHandle)();

@interface UIButton (ZWBlock)

/**
 *  为button绑定block
 *
 *  @param event 事件的类型
 *  @param block block
 */
-(void)handleControlEvent:(UIControlEvents)event withBlock:(ActionHandle)block;

@end

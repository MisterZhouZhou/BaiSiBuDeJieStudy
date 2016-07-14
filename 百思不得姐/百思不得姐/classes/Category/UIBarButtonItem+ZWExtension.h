//
//  UIBarButtonItem+ZWExtension.h
//  百思不得姐
//
//  Created by rayootech on 16/7/3.
//  Copyright © 2016年 rayootech. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void(^handleBlock)();

@interface UIBarButtonItem (ZWExtension)

/**
 *  根据图片返回UIBarButtonItem
 *
 *  @param image     正常图片
 *  @param highImage 高亮图片
 *  @param action    事件
 *
 *  @return 返回UIBarButtonItem对象
 */
+(instancetype)itemWithImage:(NSString *)image highImage:(NSString *)highImage target:(id)target action:(SEL)action;

+(instancetype)itemWithImage:(NSString *)image highImage:(NSString *)highImage actionHandle:(handleBlock)block;
@end

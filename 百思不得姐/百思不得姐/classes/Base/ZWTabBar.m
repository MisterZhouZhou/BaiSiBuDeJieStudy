//
//  ZWTabBar.m
//  百思不得姐
//
//  Created by rayootech on 16/7/3.
//  Copyright © 2016年 rayootech. All rights reserved.
//

#import "ZWTabBar.h"

@interface ZWTabBar ()

/* 发布按钮 */
@property(nonatomic,weak) UIButton *publishButton;

@end

@implementation ZWTabBar

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self setBackgroundImage:[UIImage imageNamed:@"tabbar-light"]];
        //添加中间Button
        UIButton *publishButton = [UIButton buttonWithType:UIButtonTypeCustom];
        [publishButton setBackgroundImage:[UIImage imageNamed:@"tabBar_publish_icon"] forState:UIControlStateNormal];
        [publishButton setBackgroundImage:[UIImage imageNamed:@"tabBar_publish_click_icon"] forState:UIControlStateHighlighted];
        [self addSubview:publishButton];
        self.publishButton = publishButton;
    }
    return self;
}

#pragma mark - layout
-(void)layoutSubviews
{
    [super layoutSubviews];
    
    CGFloat width = self.width;
    CGFloat height = self.height;
    
    //重新布局发布按钮和其他tabBar的frame
    self.publishButton.size = self.publishButton.currentBackgroundImage.size;
    self.publishButton.center = CGPointMake(width * 0.5, height * 0.5);

    //设置其他UItabBarButton的frame
    CGFloat buttonY = 0;
    CGFloat buttonW = width / 5;
    CGFloat buttonH = height;
    NSInteger index = 0;
    for (UIView *button in self.subviews) {
        if (![button isKindOfClass:[UIControl class]] || button == self.publishButton) continue;
        //计算按钮的x值
        CGFloat buttonX = buttonW*((index>1)?index+1:index);
        button.frame = CGRectMake(buttonX, buttonY, buttonW, buttonH);
        index ++;
    }
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end

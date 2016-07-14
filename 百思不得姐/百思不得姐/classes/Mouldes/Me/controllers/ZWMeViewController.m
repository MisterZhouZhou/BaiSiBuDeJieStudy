//
//  ZWMeViewController.m
//  百思不得姐
//
//  Created by rayootech on 16/7/3.
//  Copyright © 2016年 rayootech. All rights reserved.
//

#import "ZWMeViewController.h"

@implementation ZWMeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // initUI
    self.navigationItem.title = @"我的";
    self.view.backgroundColor = ZWGlobalBgColor;
    [self initUI];
}

#pragma mark - initUI
-(void)initUI
{
   //initNav
    [self initNav];
}

#pragma mark - initNavigation
-(void)initNav
{
    //设置导航栏右边的按钮
    UIBarButtonItem *set = [UIBarButtonItem itemWithImage:@"mine-setting-icon" highImage:@"mine-setting-icon-click" target:self action:@selector(settingButtonClick)];
    
    UIBarButtonItem *moon = [UIBarButtonItem itemWithImage:@"mine-moon-icon" highImage:@"mine-moon-icon-click" target:self action:@selector(moonButtonClick)];
    self.navigationItem.rightBarButtonItems = @[set,moon];
}


#pragma mark - action
#pragma mark - settingButton
-(void)settingButtonClick
{
    ZWLogFunc();
}

#pragma mark - nightModeButton
-(void)moonButtonClick
{
    ZWLogFunc();
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

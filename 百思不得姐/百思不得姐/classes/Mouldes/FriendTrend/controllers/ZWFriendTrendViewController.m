//
//  ZWFriendTrendViewController.m
//  百思不得姐
//
//  Created by rayootech on 16/7/3.
//  Copyright © 2016年 rayootech. All rights reserved.
//

#import "ZWFriendTrendViewController.h"
#import "UIBarButtonItem+ZWExtension.h"

@interface ZWFriendTrendViewController ()
/* 图片 */
@property(nonatomic,weak) UIImageView           *iconImageView;
/* 提示登录 */
@property(nonatomic,weak) UILabel               *tipLabel;
/* 登录按钮 */
@property(nonatomic,weak) UIButton              *loginButton;

@end

@implementation ZWFriendTrendViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //initUI
    self.navigationItem.title = @"我的关注";
    self.view.backgroundColor = ZWGlobalBgColor;
    [self initUI];
}

#pragma mark - initUI
-(void)initUI
{
   //initNav
    [self initNavigation];
}

#pragma mark - initNav
-(void)initNavigation
{
    //设置导航栏左边的按钮
    //   self.navigationItem.leftBarButtonItem = [UIBarButtonItem itemWithImage:@"friendsRecommentIcon" highImage:@"friendsRecommentIcon-click" actionHandle:^{
    //       ZWLog(@"调用了");
    //    }];
    
    self.navigationItem.leftBarButtonItem = [UIBarButtonItem itemWithImage:@"friendsRecommentIcon" highImage:@"friendsRecommentIcon-click" target:self action:@selector(friendButtonClick)];
    //添加子视图
    [self addChildView];
}

#pragma mark - addChildView
-(void)addChildView
{
    //icon
    UIImageView *iconView = [[UIImageView alloc]initWithFrame:CGRectZero];
    iconView.image        = [UIImage imageNamed:@"header_cry_icon"];
    [self.view addSubview:iconView];
    self.iconImageView    = iconView;
    
    //提示
    UILabel *tipLabel     = [[UILabel alloc]initWithFrame:CGRectZero];
    tipLabel.text         = @"快快登录吧，关注百思最in牛人好友动态让你过把瘾儿~欧耶~~~~~!";
    tipLabel.numberOfLines= 0;
    tipLabel.textColor    = ZWRGBColor(119, 73, 45);
    tipLabel.textAlignment= NSTextAlignmentCenter;
    [self.view addSubview:tipLabel];
    self.tipLabel         = tipLabel;
    
    //登录
    UIButton *loginBtn    = [UIButton buttonWithType:UIButtonTypeCustom];
    [loginBtn setTitle:@"立即登录注册" forState:UIControlStateNormal];
    [loginBtn setBackgroundImage:[UIImage imageNamed:@"friendsTrend_login"] forState:UIControlStateNormal];
    [loginBtn setBackgroundImage:[UIImage imageNamed:@"friendsTrend_login_click"] forState:UIControlStateHighlighted];
    [loginBtn setTitleColor:ZWRedTitleColor forState:UIControlStateNormal];
    [self.view addSubview:loginBtn];
    self.loginButton      = loginBtn;
    
    //layout
    [tipLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.width.mas_equalTo(200);
        make.center.mas_equalTo(self.view);
    }];
    
    [iconView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.bottom.mas_equalTo(tipLabel.mas_top).offset(-10);
        make.centerX.mas_equalTo(self.view);
    }];
    
    [loginBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(tipLabel.mas_bottom).offset(30);
        make.centerX.mas_equalTo(self.view);
        make.height.mas_equalTo(40);
    }];
    
}

#pragma mark - action
#pragma mark - tagButtonClick
-(void)friendButtonClick
{
    [self.navigationController pushWithViewControllerName:@"ZWRecommentViewController" paramas:nil animated:YES];
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

//
//  ZWEssenceViewController.m
//  百思不得姐
//
//  Created by rayootech on 16/7/3.
//  Copyright © 2016年 rayootech. All rights reserved.
//

#import "ZWEssenceViewController.h"
#import "ZWNewViewController.h"
@interface ZWEssenceViewController ()

@end

@implementation ZWEssenceViewController

#pragma mark - init
#pragma mark -

- (void)viewDidLoad {
    [super viewDidLoad];
    //initUI
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
    //设置导航内容
    self.navigationItem.titleView = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"MainTitle"]];
    
    self.navigationItem.leftBarButtonItem = [UIBarButtonItem itemWithImage:@"MainTagSubIcon" highImage:@"MainTagSubIconClick" target:self action:@selector(tagButtonClick)];
    
    self.navigationItem.rightBarButtonItem = [UIBarButtonItem itemWithImage:@"mainCellDing" highImage:@"mainCellDingClick" target:nil action:nil];
}

#pragma mark - action
#pragma mark - tagButtonClick
-(void)tagButtonClick
{
    ZWLog(@"dd");
    ZWNewViewController *vc = [ZWNewViewController new];
    [self.navigationController pushViewController:vc animated:YES];
    
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

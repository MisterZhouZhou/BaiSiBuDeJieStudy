//
//  ZWNavigationController.m
//  百思不得姐
//
//  Created by rayootech on 16/7/9.
//  Copyright © 2016年 rayootech. All rights reserved.
//

#import "ZWNavigationController.h"

@interface ZWNavigationController ()

@end

@implementation ZWNavigationController

#pragma mark - init
+(void)initialize{
    UINavigationBar *navBar = [UINavigationBar appearanceWhenContainedIn:[self class], nil];
    [navBar setBackgroundImage:[UIImage imageNamed:@"navigationbarBackgroundWhite"] forBarMetrics:UIBarMetricsDefault];
    ZWLogFunc()
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}


#pragma mark - Delegate
/**
 *  对push的子控制器进行拦截
 */
-(void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated
{
    if (self.childViewControllers.count>0) {
        UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
        [button setTitle:@"返回" forState:UIControlStateNormal];
        [button setImage:[UIImage imageNamed:@"navigationButtonReturn"] forState:UIControlStateNormal];
        [button setImage:[UIImage imageNamed:@"navigationButtonReturnClick"] forState:UIControlStateHighlighted];
        button.size = CGSizeMake(70, 30);
        //所有内容左对齐
        button.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
        //设置左边偏移
        button.contentEdgeInsets = UIEdgeInsetsMake(0, -10, 0, 0);
        [button setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
         [button setTitleColor:[UIColor redColor] forState:UIControlStateHighlighted];
        //添加事件
        [button addTarget:self action:@selector(backAction) forControlEvents:UIControlEventTouchUpInside];
        viewController.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc]initWithCustomView:button];
        //push时隐藏tabBar
        viewController.hidesBottomBarWhenPushed = YES;
    }
    //这句话要放在后面，替换viewController的leftBarButtonItem
    [super pushViewController:viewController animated:YES];
}

#pragma mark - action 
-(void)backAction
{
    [self popViewControllerAnimated:YES];
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

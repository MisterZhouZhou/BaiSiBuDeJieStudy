//
//  ZWTabBarViewController.m
//  百思不得姐
//
//  Created by rayootech on 16/7/3.
//  Copyright © 2016年 rayootech. All rights reserved.
//

#import "ZWTabBarViewController.h"
#import "ZWEssenceViewController.h"
#import "ZWNewViewController.h"
#import "ZWFriendTrendViewController.h"
#import "ZWMeViewController.h"
#import "ZWNavigationController.h"
#import "ZWTabBar.h"

@interface ZWTabBarViewController ()

@end

@implementation ZWTabBarViewController

#pragma mark -init 
+(void)initialize
{
    //通过appearance统一设置所有的TabBarItem的文字属性
    NSMutableDictionary *attrs = [NSMutableDictionary dictionary];
    attrs[NSFontAttributeName] = [UIFont systemFontOfSize:12.0];
    attrs[NSForegroundColorAttributeName] = [UIColor grayColor];
    
    NSMutableDictionary *selectedAttrs = [NSMutableDictionary dictionary];
    selectedAttrs[NSFontAttributeName] = attrs[NSFontAttributeName];
    attrs[NSForegroundColorAttributeName] = [UIColor darkGrayColor];
    
    UITabBarItem *item = [UITabBarItem appearance];
    [item setTitleTextAttributes:attrs forState:UIControlStateNormal];
    [item setTitleTextAttributes:attrs forState:UIControlStateSelected];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //添加子控制器
    [self setupChildVC:[ZWEssenceViewController class] title:@"精华" image:@"tabBar_essence_icon" selectedImage:@"tabBar_essence_click_icon"];
    [self setupChildVC:[ZWNewViewController class] title:@"新帖" image:@"tabBar_new_icon" selectedImage:@"tabBar_new_click_icon"];
    [self setupChildVC:[ZWFriendTrendViewController class] title:@"关注" image:@"tabBar_friendTrends_icon" selectedImage:@"tabBar_friendTrends_click_icon"];
    [self setupChildVC:[ZWMeViewController class] title:@"我" image:@"tabBar_me_icon" selectedImage:@"tabBar_me_click_icon"];
 
    //设置tabBar
    [self setValue:[[ZWTabBar alloc]init] forKey:@"tabBar"];
    
}


#pragma mark - 添加子控制器
-(void)setupChildVC:(Class) class title:(NSString *)title image:(NSString*)image selectedImage:(NSString *)selectedImage
{
    UIViewController *vc = [[class alloc]init];
    vc.tabBarItem.title       = title;
    vc.tabBarItem.image       = [UIImage imageNamed:image];
    vc.tabBarItem.selectedImage = [UIImage imageNamed:selectedImage];
    vc.title                  = title;
    //包装一个导航
    ZWNavigationController *nav = [[ZWNavigationController alloc]initWithRootViewController:vc];
    [self addChildViewController:nav];
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

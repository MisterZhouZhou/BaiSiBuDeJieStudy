//
//  ZWRecommentViewController.m
//  百思不得姐
//
//  Created by rayootech on 16/7/13.
//  Copyright © 2016年 rayootech. All rights reserved.
//

#import "ZWRecommentViewController.h"
#import <AFNetworking.h>
#import <SVProgressHUD.h>
@interface ZWRecommentViewController ()

@end

@implementation ZWRecommentViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   
    self.navigationItem.title = @"推荐关注";
    //设置背景色
    self.view.backgroundColor = ZWGlobalBgColor;
    
    //全屏指示器
    [SVProgressHUD showWithMaskType:SVProgressHUDMaskTypeBlack];
    //发送请求
    NSMutableDictionary *params = [NSMutableDictionary dictionary];
    params[@"a"] = @"category";
    params[@"c"] = @"subscribe";
    
    [[AFHTTPSessionManager manager]GET:@"http://apia.budejie.com/api/api_open.php" parameters:params success:^(NSURLSessionDataTask * _Nonnull task, id  _Nonnull responseObject) {
        
        ZWLog(@"%@",responseObject);
        
        //隐藏显示器
        [SVProgressHUD dismiss];
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        [SVProgressHUD showErrorWithStatus:@"加载推荐消息失败！"];
    }];
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

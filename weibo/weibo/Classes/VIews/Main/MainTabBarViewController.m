//
//  MainTabBarViewController.m
//  weibo
//
//  Created by xlx on 17/4/9.
//  Copyright © 2017年 com.3reality. All rights reserved.
//

#import "MainTabBarViewController.h"
#import "HomeTableViewController.h"
#import "MessageTableViewController.h"
#import "DiscoverTableViewController.h"
#import "MeTableViewController.h"


@interface MainTabBarViewController ()

@end

@implementation MainTabBarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self addChildViewController:[HomeTableViewController new] imageName:@"tabbar_home" titleName:@"首页"];
    [self addChildViewController:[MessageTableViewController new] imageName:@"tabbar_message_center" titleName:@"消息"];
    [self addChildViewController:[DiscoverTableViewController new] imageName:@"tabbar_discover" titleName:@"发现"];
    [self addChildViewController:[MeTableViewController new] imageName:@"tabbar_profile" titleName:@"我的"];

    
}

#pragma mark - 定义一个添加子控制器的方法
- (void)addChildViewController:(UIViewController *)childController imageName:(NSString *)imgName titleName: (NSString *)titleName{

    // 设置tabbarItme的图片
    
  
    childController.tabBarItem.image = [UIImage imageNamed:imgName];
    childController.tabBarItem.selectedImage = [[UIImage imageNamed:[NSString stringWithFormat:@"%@_selected", imgName]] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];

    // 设置文字
    [childController.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor orangeColor]} forState:UIControlStateSelected];
    [childController.tabBarItem setTitleTextAttributes:@{NSFontAttributeName:[UIFont systemFontOfSize:13]} forState:UIControlStateNormal];
    
    childController.title = titleName;
    // 添加控制器
    UINavigationController *navigationVC = [[UINavigationController alloc] initWithRootViewController:childController];
   
    [self addChildViewController:navigationVC];
    
}


@end

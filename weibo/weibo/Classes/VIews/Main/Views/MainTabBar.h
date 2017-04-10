//
//  MainTabBar.h
//  weibo
//
//  Created by xlx on 17/4/9.
//  Copyright © 2017年 com.3reality. All rights reserved.
//


@protocol MainTabBarDelegate <NSObject>

- (void)addBtnClick;

@end


#import <UIKit/UIKit.h>


@interface MainTabBar : UITabBar

@property (nonatomic, strong) UIButton *composeBtn;

@property (nonatomic, weak) id<MainTabBarDelegate> mainTabarDelegate;

@end

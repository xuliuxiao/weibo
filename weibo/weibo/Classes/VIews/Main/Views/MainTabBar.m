//
//  MainTabBar.m
//  weibo
//
//  Created by xlx on 17/4/9.
//  Copyright © 2017年 com.3reality. All rights reserved.
//

#import "MainTabBar.h"
#import "UIView+YPGeneral.h"
@implementation MainTabBar
- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self setupUI];
    }
    return self;
}

- (void)setupUI{

    [self addSubview:self.composeBtn];


}

/**
 *  懒加载
 */
- (UIButton *)composeBtn
{
    if (_composeBtn == nil)
    {
        _composeBtn = [[UIButton alloc] init];
        [_composeBtn addTarget:self action:@selector(clickAddBtn) forControlEvents:UIControlEventTouchUpInside];
        // 设置图片
        [_composeBtn setBackgroundImage:[UIImage imageNamed:@"tabbar_compose_button"] forState:UIControlStateNormal];
        [_composeBtn setBackgroundImage:[UIImage imageNamed:@"tabbar_compose_button_highlighted"] forState:UIControlStateSelected];
        
        [_composeBtn setImage:[UIImage imageNamed:@"tabbar_compose_icon_add"] forState:UIControlStateNormal];
        [_composeBtn setImage:[UIImage imageNamed:@"tabbar_compose_icon_add_highlighted"] forState:UIControlStateSelected];
        _composeBtn.frame = CGRectMake(([UIScreen mainScreen].bounds.size.width - 65)/2, 0, 65, 50);
//
        
    }
    return _composeBtn;
}

- (void)layoutSubviews{

    [super layoutSubviews];
   
    CGFloat btnWidth = kScreenWidth/5;
    int dext = 0;
    
    for (UIView *childView in self.subviews) {
        if ([childView isKindOfClass:NSClassFromString(@"UITabBarButton")]) {
            childView.x = dext * btnWidth;
            childView.width = btnWidth;
            
            dext++;
            
            if (dext == 2) {
                dext++;
            }
        }
        
       
        
    
    }



}
#pragma mark - 点击加号按钮
- (void)clickAddBtn{

    if ([self.mainTabarDelegate respondsToSelector:@selector(addBtnClick)]) {
        [self.mainTabarDelegate addBtnClick];
    }

}


@end

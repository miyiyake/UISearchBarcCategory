//
//  UISearchBar+MUSearchBar.h
//  MUSearch
//
//  Created by windyer on 2016/12/29.
//  Copyright © 2016年 wonhigh. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UISearchBar (MUSearchBar)

/**
 设置searchBar 的提示文字和图标居左显示
 */
- (void)setSearchBarPlaceholdePositon;

/**
 设置searchBar默认输入框和背景颜色

 @param searchBar searchBar
 */
- (void)setSearchBarBackgroudColorWith:(UISearchBar *)searchBar;
@end

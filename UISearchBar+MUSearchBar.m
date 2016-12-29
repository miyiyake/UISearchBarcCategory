//
//  UISearchBar+MUSearchBar.m
//  MUSearch
//
//  Created by windyer on 2016/12/29.
//  Copyright © 2016年 wonhigh. All rights reserved.
//

#import "UISearchBar+MUSearchBar.h"

@implementation UISearchBar (MUSearchBar)

- (void)setSearchBarPlaceholdePositon {
    
    SEL centerSelector = NSSelectorFromString([NSString stringWithFormat:@"%@%@", @"setCenter", @"Placeholder:"]);
    
    if ([self respondsToSelector:centerSelector]) {
        
        BOOL centeredPlaceholder = NO;
        
        NSMethodSignature *signature = [[UISearchBar class] instanceMethodSignatureForSelector:centerSelector];
        
        NSInvocation *invocation = [NSInvocation invocationWithMethodSignature:signature];
        
        [invocation setTarget:self];
        [invocation setSelector:centerSelector];
        [invocation setArgument:&centeredPlaceholder atIndex:2];
        [invocation invoke];
    }
}

- (void)setSearchBarBackgroudColorWith:(UISearchBar *)searchBar {
    
    UIImage* searchBarBg = [self GetImageWithColor:[UIColor clearColor] andHeight:32.0f];
    //设置背景图片
    [searchBar setBackgroundImage:searchBarBg];
    //设置背景色
    [searchBar setBackgroundColor:[UIColor colorWithRed:235/255.0 green:235/255.0 blue:235/255.0 alpha:1]];
    //设置文本框背景
    [searchBar setSearchFieldBackgroundImage:searchBarBg forState:UIControlStateNormal];
    [UIColor colorWithRed:235/255.0 green:235/255.0 blue:235/255.0 alpha:1];
}

- (UIImage*) GetImageWithColor:(UIColor*)color andHeight:(CGFloat)height
{
    CGRect r= CGRectMake(0.0f, 0.0f, 1.0f, height);
    UIGraphicsBeginImageContext(r.size);
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    CGContextSetFillColorWithColor(context, [color CGColor]);
    CGContextFillRect(context, r);
    
    UIImage *img = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return img;
}

@end

//
//  UIImageView+ImageEdge.m
//  UIImageViewCategory
//
//  Created by myApple on 16/5/29.
//  Copyright © 2016年 myApple. All rights reserved.
//

#import "UIImageView+ImageEdge.h"
#import <objc/runtime.h>

@implementation UIImageView (ImageEdge)

static char UIImageEdgeKey;

@dynamic UIImageEdge;

#pragma mark - 自动实现其set和get方法
-(void)setUIImageEdge:(CGRect)UIImageEdge
{
    objc_setAssociatedObject(self, &UIImageEdgeKey, NSStringFromCGRect(UIImageEdge), OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    UIImageView * imageView = [[UIImageView alloc]initWithFrame:UIImageEdge];
    imageView.image = self.image;
     self.image = nil;
    [self addSubview:imageView];
}

-(CGRect)edgeImage
{
    NSString * string = objc_getAssociatedObject(self, &UIImageEdgeKey);
    CGRect rect = CGRectFromString(string);
    return rect;
}

@end

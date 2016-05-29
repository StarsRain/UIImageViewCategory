//
//  ViewController.m
//  UIImageViewCategory
//
//  Created by myApple on 16/5/29.
//  Copyright © 2016年 myApple. All rights reserved.
//

#import "ViewController.h"
#import "UIImageView+ImageEdge.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    float x = self.view.frame.size.width /2.0 - 50;
    float y = self.view.frame.size.height /2.0 - 50;
    float width = 100;
    float height = 100;
    UIImageView * WXXImageView = [[UIImageView alloc]initWithFrame:CGRectMake(x, y, width, height)];
    WXXImageView.backgroundColor = [UIColor greenColor];
    WXXImageView.image = [UIImage imageNamed:@"qqShare"];
    WXXImageView.UIImageEdge = CGRectMake(20, 20,60, 60);
    [self.view addSubview:WXXImageView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

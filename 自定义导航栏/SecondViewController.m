//
//  SecondViewController.m
//  自定义导航栏
//
//  Created by luoyin on 15/7/3.
//  Copyright (c) 2015年 luoyin. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
    //自定义导航栏返回按钮
    self.navigationItem.leftBarButtonItem = ({
        
        //导航栏返回背景视图
        UIView *view = [[UIView alloc]initWithFrame:CGRectMake(0, 0, 160, 44)];
        
        //返回按钮
        UIButton *button = [[UIButton alloc] initWithFrame:CGRectMake(0, 12, 20, 20)];
        [button setBackgroundImage:[UIImage imageNamed:@"goBack"]
                          forState:UIControlStateNormal];
        [button addTarget:self
                   action:@selector(backTo:)
         forControlEvents:UIControlEventTouchDown];
        button.imageView.contentMode = UIViewContentModeScaleAspectFit;
        [view addSubview:button];
        
        //中间分割线
        UIView *seprateLine = ({
            UIView *view = [[UIView alloc]initWithFrame:CGRectMake(30, 12, 1, 20)];
            view.backgroundColor = [UIColor colorWithRed:45/255.0 green:45/255.0 blue:45/255.0 alpha:1];
            view;
        });
        [view addSubview:seprateLine];
        
        //显示返回标题
        UILabel *backLabel = ({
            UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(40, 0, 100, 44)];
            label.textAlignment = NSTextAlignmentLeft;
            label.font = [UIFont systemFontOfSize:14];
            label.textColor = [UIColor blackColor];
            label.text = @"FistView";
            label;
        });
        [view addSubview:backLabel];
        
        //把view添加上去
        UIBarButtonItem *barButtonItem = [[UIBarButtonItem alloc]
                                          initWithCustomView:view];
        barButtonItem;
    });

}

- (void)backTo:(id)sender{
    [self.navigationController popViewControllerAnimated:YES];
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

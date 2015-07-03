//
//  ViewController.m
//  自定义导航栏
//
//  Created by luoyin on 15/7/3.
//  Copyright (c) 2015年 luoyin. All rights reserved.
//

#import "ViewController.h"
#import "FistViewController.h"

@interface ViewController ()

@end

#define WIDTH [UIScreen mainScreen].bounds.size.width

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
    //设置导航栏颜色
    self.navigationController.navigationBar.barTintColor = [UIColor redColor];
    self.navigationItem.title = @"ViewController";
    
    //给定任意的stirng怎样改变其属性？
    
    //添加按钮
    UIButton *button1 = ({
        UIButton *button = [[UIButton alloc]initWithFrame:CGRectMake((WIDTH-200)/2, 100, 200, 40)];
        [button setTitle:@"pushToFistViewController" forState:UIControlStateNormal];
        button.titleLabel.font = [UIFont systemFontOfSize:12];
        [button setTitleColor:[UIColor yellowColor] forState:UIControlStateHighlighted];
        button.backgroundColor = [UIColor grayColor];
        
        [button addTarget:self action:@selector(push:) forControlEvents:UIControlEventTouchUpInside];
        button;
    });
    [self.view addSubview:button1];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)push:(id)sender{
    FistViewController *VC = [[FistViewController alloc]init];
    [self.navigationController pushViewController:VC animated:YES];
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

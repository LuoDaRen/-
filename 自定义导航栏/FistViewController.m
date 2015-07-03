//
//  FistViewController.m
//  自定义导航栏
//
//  Created by luoyin on 15/7/3.
//  Copyright (c) 2015年 luoyin. All rights reserved.
//

#import "FistViewController.h"
#import "SecondViewController.h"

@interface FistViewController ()

@end

#define WIDTH [[UIScreen mainScreen] bounds].size.width

@implementation FistViewController

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
            label.text = @"ViewController";
            label;
        });
        [view addSubview:backLabel];
        
        //把view添加上去
        UIBarButtonItem *barButtonItem = [[UIBarButtonItem alloc]
                                          initWithCustomView:view];
        barButtonItem;
    });
    
    //添加按钮
    UIButton *button1 = ({
        UIButton *button = [[UIButton alloc]initWithFrame:CGRectMake((WIDTH-200)/2, 100, 200, 40)];
        [button setTitle:@"pushToSecondViewCOntroller" forState:UIControlStateNormal];
        [button setTitleColor:[UIColor yellowColor] forState:UIControlStateHighlighted];
        button.backgroundColor = [UIColor grayColor];
        button.titleLabel.font = [UIFont systemFontOfSize:12];
        [button addTarget:self action:@selector(push:) forControlEvents:UIControlEventTouchUpInside];
        button;
    });
    [self.view addSubview:button1];

}

- (void)backTo:(id)sender{
    [self.navigationController popViewControllerAnimated:YES];
}

-(void)push:(id)sender{
    SecondViewController *VC = [[SecondViewController alloc]init];
    [self.navigationController pushViewController:VC animated:YES];
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

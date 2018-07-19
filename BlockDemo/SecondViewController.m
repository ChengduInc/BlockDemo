//
//  SecondViewController.m
//  BlockDemo
//
//  Created by Apple on 2018/7/19.
//  Copyright © 2018年 Apple. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController


#pragma 系统回调
- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = UIColor.yellowColor;
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    
    /** 3.避免循环引用 */
    __weak typeof(self) weakSelf = self;
    /** 4.调用Block传值 */
    if (weakSelf.inputDataSourceBlock) {
        weakSelf.inputDataSourceBlock(@"我不是天生要强，我是注定要凉");
    }
    
    [self.navigationController popViewControllerAnimated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}


@end

//
//  FirstViewController.m
//  BlockDemo
//
//  Created by Apple on 2018/7/19.
//  Copyright © 2018年 Apple. All rights reserved.
//

#import "FirstViewController.h"
#import "SecondViewController.h"

@interface FirstViewController ()

@property (nonatomic, strong) SecondViewController *vc;      /**< SecondViewController */
@end

@implementation FirstViewController

#pragma 系统回调
- (void)viewDidLoad {
    [super viewDidLoad];
    /** 避免循环引用 */
    __weak typeof(self) weakSelf = self;
    weakSelf.vc = [[SecondViewController alloc]init];
    /** 取出Block传递过来的值 */
    weakSelf.vc.inputDataSourceBlock = ^(NSString *source) {
        NSLog(@"%@",source);
    };
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [self.navigationController pushViewController:self.vc animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end

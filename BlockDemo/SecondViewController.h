//
//  SecondViewController.h
//  BlockDemo
//
//  Created by Apple on 2018/7/19.
//  Copyright © 2018年 Apple. All rights reserved.
//

#import <UIKit/UIKit.h>

/** 1.定义Block */
typedef void(^InputDataSourceBlock)(NSString *source);

@interface SecondViewController : UIViewController

/** 2.声明Block */
@property (nonatomic,copy) InputDataSourceBlock inputDataSourceBlock;

@end

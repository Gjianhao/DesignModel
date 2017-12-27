//
//  ViewController.m
//  代理模式Delegate
//
//  Created by gjh on 2017/12/24.
//  Copyright © 2017年 Gjianhao. All rights reserved.
//

#import "ViewController.h"
#import "ProxyShopping.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // 客户端的调用
    ProxyShopping *shopping = [[ProxyShopping alloc] init];
    [shopping shoppingPhone];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end

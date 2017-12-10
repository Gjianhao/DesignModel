//
//  ViewController.m
//  适配器模式Adapter
//
//  Created by gjh on 2017/12/10.
//  Copyright © 2017年 Gjianhao. All rights reserved.
//

#import "ViewController.h"
#import "Adapter.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 客户端调用
    Adapter *adapter = [[Adapter alloc] init];
    float cny = [adapter getCNY];
    NSLog(@"人民币:%f", cny);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end

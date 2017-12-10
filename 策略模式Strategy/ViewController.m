//
//  ViewController.m
//  DesignModel
//
//  Created by gjh on 2017/12/9.
//  Copyright © 2017年 Gjianhao. All rights reserved.
//

#import "ViewController.h"
#import "FinancyStrategy.h" // 原始

#import "IFinancyStrategy.h"  // 策略接口
#import "AliPayFinancyStrategy.h"
#import "YooliFinancyStrategy.h"
#import "FinancyContext.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 测试原始数据
//    FinancyStrategy *financy = [[FinancyStrategy alloc] init];
//    float money = [financy financyWithMonth:6 money:10000 type:FinancyType_AliPay];
//    NSLog(@"赎回的金额%f", money);
    
    // 策略模式案例(面向协议编程)
    id<IFinancyStrategy> aliPayFinancy = [[AliPayFinancyStrategy alloc] init];
//    FinancyContext *context = [[FinancyContext alloc] initWithFinancy:aliPayFinancy];
//    // 策略上下文也是可以不写的
//    float money = [context financyWithMonth:6 money:10000];
    float money = [aliPayFinancy financyWithMonth:6 money:10000];
    NSLog(@"赎回的金额%f", money);
    
}
// 不需要关心是哪一个类型,只需要遵循这个协议就行
//- (void)setFinancyStrategy:(id<IFinancyStrategy>)financy {
//    [financy financyWithMonth:6 money:10000];
//}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end

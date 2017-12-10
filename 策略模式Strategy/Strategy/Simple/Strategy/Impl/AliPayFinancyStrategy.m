//
//  AliPayFinancyStrategy.m
//  DesignModel
//
//  Created by gjh on 2017/12/9.
//  Copyright © 2017年 Gjianhao. All rights reserved.
//

#import "AliPayFinancyStrategy.h"

@implementation AliPayFinancyStrategy

// 支付宝具体算法
- (float)financyWithMonth:(float)month money:(float)money {
    if (month == 6) {
        return money + money*0.03f/12*month;
    } else if (month == 12) {
        return money + money*0.04f/12*month;
    } else if (month == 24) {
        return money + money*0.045f/12*month;
    } else {
        @throw [[NSException alloc] initWithName:@"参数错误" reason:@"您输入月份有误!请重新输入" userInfo:nil];
    }
    return 0;
}

@end

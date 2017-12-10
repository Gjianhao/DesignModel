//
//  YooliFinancyStrategy.m
//  DesignModel
//
//  Created by gjh on 2017/12/9.
//  Copyright © 2017年 Gjianhao. All rights reserved.
//

#import "YooliFinancyStrategy.h"

@implementation YooliFinancyStrategy

// 有利网具体算法
- (float)financyWithMonth:(float)month money:(float)money {
    if (month == 3) {
        return money + money*0.07f/12*month;
    } else if (month == 6) {
        return money + money*0.08f/12*month;
    } else if (month == 12) {
        return money + money*0.095f/12*month;
    } else if (month == 24) {
        return money + money*0.105f/12*month;
    } else {
        @throw [[NSException alloc] initWithName:@"参数错误" reason:@"您输入月份有误!请重新输入" userInfo:nil];
    }
    return 0;
}

@end

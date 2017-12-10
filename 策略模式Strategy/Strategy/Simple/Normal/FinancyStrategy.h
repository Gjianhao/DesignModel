//
//  FinancyStrategy.h
//  DesignModel
//
//  Created by gjh on 2017/12/9.
//  Copyright © 2017年 Gjianhao. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, FinancyType) {
    FinancyType_AliPay,
    FinancyType_YooliPay,
};

@interface FinancyStrategy : NSObject

/**
 通过存钱的时间长度和金额和类型,得到最后的本息和

 @param month 时长
 @param money 本金
 @param type 类型
 @return 本息和
 */
- (float)financyWithMonth:(float)month money:(float)money type:(FinancyType)type;

@end

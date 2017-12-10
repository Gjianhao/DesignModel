//
//  FinancyContext.h
//  DesignModel
//
//  Created by gjh on 2017/12/10.
//  Copyright © 2017年 Gjianhao. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "IFinancyStrategy.h"

// 策略上下文(可以忽略)
@interface FinancyContext : NSObject

- (instancetype)initWithFinancy:(id<IFinancyStrategy>)financy;

- (float)financyWithMonth:(float)month money:(float)money;

@end

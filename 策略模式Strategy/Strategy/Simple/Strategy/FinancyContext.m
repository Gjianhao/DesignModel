//
//  FinancyContext.m
//  DesignModel
//
//  Created by gjh on 2017/12/10.
//  Copyright © 2017年 Gjianhao. All rights reserved.
//

#import "FinancyContext.h"

@interface FinancyContext ()

@property (nonatomic)id<IFinancyStrategy> financy;

@end

@implementation FinancyContext

- (instancetype)initWithFinancy:(id<IFinancyStrategy>)financy {
    self = [super init];
    if (self) {
        _financy = financy;
    }
    return self;
}

- (float)financyWithMonth:(float)month money:(float)money {
    return [_financy financyWithMonth:month money:money];
}

@end

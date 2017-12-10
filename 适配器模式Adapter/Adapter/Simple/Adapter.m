//
//  Adapter.m
//  适配器模式Adapter
//
//  Created by gjh on 2017/12/10.
//  Copyright © 2017年 Gjianhao. All rights reserved.
//

#import "Adapter.h"

@implementation Adapter

- (float)getCNY {
    return [self getUSD] * 6.88f;
}

@end

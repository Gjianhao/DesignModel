//
//  ObjectAdapter.m
//  适配器模式Adapter
//
//  Created by gjh on 2017/12/10.
//  Copyright © 2017年 Gjianhao. All rights reserved.
//

#import "ObjectAdapter.h"
#import "Adaptee.h"

@interface ObjectAdapter ()

// 持有被适配对象的原因就是为了能调用被适配对象的方法[_adaptee getUSD]
@property (nonatomic) Adaptee *adaptee;

@end

@implementation ObjectAdapter

- (instancetype)initWithAdaptee:(Adaptee *)adaptee
{
    self = [super init];
    if (self) {
        _adaptee = adaptee;
    }
    return self;
}

- (float)getCNY {
    return [_adaptee getUSD] * 6.88f;
}

@end

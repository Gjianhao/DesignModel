//
//  ProxyShopping.m
//  代理模式Delegate
//
//  Created by gjh on 2017/12/24.
//  Copyright © 2017年 Gjianhao. All rights reserved.
//

#import "ProxyShopping.h"
#import "MyShopping.h"

@interface ProxyShopping ()

@property (nonatomic) id<IShopping> shopping;

@end

@implementation ProxyShopping

- (instancetype)init {
    self = [super init];
    if (self) {
        _shopping = [[MyShopping alloc] init];
    }
    return self;
}

- (void)shoppingPhone {
    NSLog(@"代理商");
    [_shopping shoppingPhone];
}

@end

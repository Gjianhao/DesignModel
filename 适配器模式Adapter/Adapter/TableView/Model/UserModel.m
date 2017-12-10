//
//  UserModel.m
//  适配器模式Adapter
//
//  Created by gjh on 2017/12/10.
//  Copyright © 2017年 Gjianhao. All rights reserved.
//

#import "UserModel.h"

@implementation UserModel

- (instancetype)initWithTitle:(NSString *)title name:(NSString *)name
{
    self = [super init];
    if (self) {
        _name = name;
        _title = title;
    }
    return self;
}

@end

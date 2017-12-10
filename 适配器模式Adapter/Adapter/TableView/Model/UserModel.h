//
//  UserModel.h
//  适配器模式Adapter
//
//  Created by gjh on 2017/12/10.
//  Copyright © 2017年 Gjianhao. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface UserModel : NSObject

@property (nonatomic, copy)NSString *title;

@property (nonatomic, copy)NSString *name;

- (instancetype)initWithTitle:(NSString *)title name:(NSString *)name;

@end

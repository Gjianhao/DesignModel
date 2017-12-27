//
//  IShopping.h
//  代理模式Delegate
//
//  Created by gjh on 2017/12/24.
//  Copyright © 2017年 Gjianhao. All rights reserved.
//

#import <Foundation/Foundation.h>

// 购物协议:买手机 (目标接口)
@protocol IShopping <NSObject>

- (void)shoppingPhone;

@end

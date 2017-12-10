//
//  IEncryption.h
//  DesignModel
//
//  Created by gjh on 2017/12/10.
//  Copyright © 2017年 Gjianhao. All rights reserved.
//

#import <Foundation/Foundation.h>

// 加密算法策略接口
// 设计模式很灵活,没有局限性
@protocol IEncryption <NSObject>

// 你觉得策略接口只能定义一个策略算法吗?
// 并不是,可以定义一个算法,也可以是一组或者一对算法
// 例如: 计算利息(一个算法)
// 变种后
// 例如: 加密短发(一对算法, 加密算法,解密算法)


// 加密算法(可以做一些修改)
// 共性和差异性
// 前面两个参数解决共性问题,第三个参数解决差异性问题
- (NSString *)encrypt:(NSString *)data key:(NSString *)key iv:(NSData *)iv;

// 解密算法
- (NSString *)decrypt:(NSString *)data key:(NSString *)key iv:(NSData *)iv;

@end

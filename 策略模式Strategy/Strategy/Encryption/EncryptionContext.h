//
//  EncryptionContext.h
//  DesignModel
//
//  Created by gjh on 2017/12/10.
//  Copyright © 2017年 Gjianhao. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "IEncryption.h"

// 也就相当于在算法的.h 文件中不把算法暴露出来,而是通过策略上下文来提供加密的方法
@interface EncryptionContext : NSObject

- (instancetype)initWithEncryption:(id<IEncryption>)encryption;

// 加密算法(可以做一些修改)
- (NSString *)encrypt:(NSString *)data key:(NSString *)key iv:(NSData *)iv;

// 解密算法
- (NSString *)decrypt:(NSString *)data key:(NSString *)key iv:(NSData *)iv;

@end

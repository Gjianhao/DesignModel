//
//  EncryptionContext.m
//  DesignModel
//
//  Created by gjh on 2017/12/10.
//  Copyright © 2017年 Gjianhao. All rights reserved.
//

#import "EncryptionContext.h"

@interface EncryptionContext ()

@property (nonatomic) id<IEncryption> encryption;

@end

@implementation EncryptionContext

- (instancetype)initWithEncryption:(id<IEncryption>)encryption {
    self = [super init];
    if (self) {
        _encryption = encryption;
    }
    return self;
}

- (NSString *)encrypt:(NSString *)data key:(NSString *)key iv:(NSData *)iv {
    return [_encryption encrypt:data key:key iv:iv];
}

- (NSString *)decrypt:(NSString *)data key:(NSString *)key iv:(NSData *)iv {
    return [_encryption decrypt:data key:key iv:iv];
}

@end

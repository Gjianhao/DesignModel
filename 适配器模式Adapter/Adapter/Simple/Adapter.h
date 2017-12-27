//
//  Adapter.h
//  适配器模式Adapter
//
//  Created by gjh on 2017/12/10.
//  Copyright © 2017年 Gjianhao. All rights reserved.
//

#import "Adaptee.h"
#import "Target.h"

// 适配器--->类适配器模式
// 特点一: 类适配器模式---> Adapter 需要继承 Adaptee(被适配对象)
// 特点二: 类适配器模式---> Adapter 实现目标接口 Target
@interface Adapter : Adaptee <Target>

@end

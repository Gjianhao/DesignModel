//
//  BaseAdapter.h
//  适配器模式Adapter
//
//  Created by gjh on 2017/12/10.
//  Copyright © 2017年 Gjianhao. All rights reserved.
//

#import <UIKit/UIKit.h>

// 适配器
// base 解决共性问题, 子类解决差异问题
// 被适配对象是数据, 目标接口是代理和数据源
@interface BaseAdapter : UITableView <UITableViewDataSource, UITableViewDelegate>

// 数据集合
@property (nonatomic, strong) NSMutableArray *dataArray;

@end

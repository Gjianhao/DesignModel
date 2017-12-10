//
//  UserAdapter.m
//  适配器模式Adapter
//
//  Created by gjh on 2017/12/10.
//  Copyright © 2017年 Gjianhao. All rights reserved.
//

#import "UserAdapter.h"
#import "UserModel.h"

@implementation UserAdapter

- (instancetype)init
{
    self = [super init];
    if (self) {
        // 子类调用父类的变量,只能写成 self.XXX
        [self.dataArray addObject:[[UserModel alloc] initWithTitle:@"姓名" name:@"郭健豪"]];
        [self.dataArray addObject:[[UserModel alloc] initWithTitle:@"性别" name:@"男"]];
    }
    return self;
}

// 重写父类的方法
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [super tableView:tableView cellForRowAtIndexPath:indexPath];
    UserModel *model = [self.dataArray objectAtIndex:indexPath.row];
    cell.textLabel.text = model.title;
    cell.detailTextLabel.text = model.name;
    return cell;
}

@end

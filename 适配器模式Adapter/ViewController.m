//
//  ViewController.m
//  适配器模式Adapter
//
//  Created by gjh on 2017/12/10.
//  Copyright © 2017年 Gjianhao. All rights reserved.
//

#import "ViewController.h"
#import "Adapter.h"

#import "UserAdapter.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITableView *tableView;

@property (nonatomic, strong)UserAdapter *userAdapter;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 客户端调用
    Adapter *adapter = [[Adapter alloc] init];
    float cny = [adapter getCNY];
    NSLog(@"人民币:%f", cny);
    
//    [self initTableView];
    [self initTableViewAdapter];
}

- (void)initTableViewAdapter {
    _userAdapter = [[UserAdapter alloc] init];
    _tableView.dataSource = _userAdapter;
    _tableView.delegate = _userAdapter;
}


//- (void)initTableView {
//    _tableView.dataSource = self;
//    _tableView.delegate = self;
//}

#pragma mark - 数据源和代理方法

//- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
//    return 1;
//}
//
//- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
//    return 10;
//}
//
//- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
//    static NSString *cellIdentifier = @"cellIdentifier";
//    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
//    if (cell == nil) {
//        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:cellIdentifier];
//        cell.textLabel.text = @"郭健豪";
//        cell.detailTextLabel.text = @"gjh";
//    }
//    return cell;
//}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end

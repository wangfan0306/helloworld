//
//  RootViewController.m
//  ReuseProblem
//
//  Created by liuweizhen on 15/9/9.
//  Copyright (c) 2015年 勇敢的心. All rights reserved.
//

#import "RootViewController.h"
#import "BookCell.h"

@interface RootViewController ()

@property (nonatomic) NSMutableArray *dataArray;
@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // self.clearsSelectionOnViewWillAppear = YES;
    [self initData];
    
    [self.tableView registerClass:[BookCell class] forCellReuseIdentifier:@"cellID"];
}

- (void)initData {
    self.dataArray = [NSMutableArray arrayWithObjects:@"都怪我", @"都是月亮惹的祸", @"海阔天空", @"滑板鞋", @"伤不起", @"从头一再来", @"向天再借五百年", @"大海", @"xxxx", @"fdisaljf", @"djsoa fd", @"234567", @"7654345", @"ojhgth", @"fdhsia", nil];
}

#pragma mark - Table view data source
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.dataArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    BookCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cellID" forIndexPath:indexPath];
    cell.textLabel.text = self.dataArray[indexPath.row];
    if (indexPath.row == 0) {
        [cell setUp];
    }
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 80;
}

@end

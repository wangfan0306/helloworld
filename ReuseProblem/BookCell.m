//
//  BookCell.m
//  ReuseProblem
//
//  Created by liuweizhen on 15/9/9.
//  Copyright (c) 2015年 勇敢的心. All rights reserved.
//

#import "BookCell.h"

@implementation BookCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
    }
    return self;
}

- (void)setUp {
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(10, 10, 50, 50)];
    label.backgroundColor = [UIColor redColor];
    [self.contentView addSubview:label];
}

@end

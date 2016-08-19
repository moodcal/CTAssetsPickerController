//
//  CTAssetsGridViewHeader.m
//  CTAssetsPickerDemo
//
//  Created by yanzheng on 16/3/22.
//  Copyright © 2016年 Clement T. All rights reserved.
//

#import "CTAssetsGridViewHeader.h"
#import <PureLayout/PureLayout.h>

@implementation CTAssetsGridViewHeader

- (instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame])
    {
        [self setupViews];
    }
    
    return self;
}

#pragma mark - Setup

- (void)setupViews
{
    UIView *line = [UIView newAutoLayoutView];
    line.backgroundColor = [UIColor colorWithWhite:.9 alpha:.5];
    
    self.dateLabel = [UILabel newAutoLayoutView];
    self.ageLabel = [UILabel newAutoLayoutView];
    
    self.dateLabel.textAlignment = NSTextAlignmentLeft;
    self.dateLabel.font = [UIFont systemFontOfSize:[[UIScreen mainScreen] bounds].size.height>=667 ? 13 : 12];
    self.dateLabel.textColor = [UIColor darkGrayColor];
    self.ageLabel.textAlignment = NSTextAlignmentRight;
    self.ageLabel.font = [UIFont systemFontOfSize:12];
    self.ageLabel.textColor = [UIColor darkGrayColor];
    
    [self addSubview:line];
    [self addSubview:self.dateLabel];
    [self addSubview:self.ageLabel];
    
    [line autoPinEdgeToSuperviewEdge:ALEdgeTop];
    [line autoSetDimensionsToSize:CGSizeMake(self.bounds.size.width, 1)];
    [self.dateLabel autoAlignAxisToSuperviewAxis:ALAxisHorizontal];
    [self.dateLabel autoPinEdgeToSuperviewEdge:ALEdgeLeft withInset:2];
    [self.ageLabel autoAlignAxisToSuperviewAxis:ALAxisHorizontal];
    [self.ageLabel autoPinEdgeToSuperviewEdge:ALEdgeRight withInset:2];
}


@end

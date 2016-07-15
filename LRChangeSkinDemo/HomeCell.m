//
//  HomeCell.m
//  LRChangeSkinDemo
//
//  Created by RomitLee on 16/7/15.
//  Copyright © 2016年 BlueMobi. All rights reserved.
//

#import "HomeCell.h"

@implementation HomeCell

- (void)awakeFromNib {
    // Initialization code
}

-(instancetype)init
{
    self=[super init];
    //self.mainLabel=[[LRSkinLabel alloc]init];
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end

//
//  LRSkinView.m
//  LRChangeSkinDemo
//
//  Created by RomitLee on 16/7/15.
//  Copyright © 2016年 BlueMobi. All rights reserved.
//

#import "LRSkinView.h"
#import "LRSkinManger.h"
#import "LRSkinModel.h"

@implementation LRSkinView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

-(void)awakeFromNib
{
    [[NSNotificationCenter defaultCenter]addObserver:self selector:@selector(changeSkin:) name:@"LRSkinChange" object:nil];
    
}


-(instancetype)init
{
    self=[super init];
    
    [[NSNotificationCenter defaultCenter]addObserver:self selector:@selector(changeSkin:) name:@"LRSkinChange" object:nil];
    
    return self;
}

-(void)changeSkin:(NSNotification *)noti
{
    LRSkinModel *model=[LRSkinManger NowSkin];
    self.backgroundColor=model.backCorol;
}

@end

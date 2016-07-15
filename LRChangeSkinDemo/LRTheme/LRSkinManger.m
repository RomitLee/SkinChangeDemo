//
//  LRSkinManger.m
//  LRChangeSkinDemo
//
//  Created by RomitLee on 16/7/15.
//  Copyright © 2016年 BlueMobi. All rights reserved.
//

#import "LRSkinManger.h"

@interface LRSkinManger ()


@property (nonatomic,assign) LRSkinType type;
@end

@implementation LRSkinManger

+ (instancetype)sharedInstance
{
    static LRSkinManger *sharedSingleton = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedSingleton = [[self alloc] init];
    });
    
    //sharedSingleton.type=LRSkinTypeDefult;
    return sharedSingleton;
}


+(void )changeSkin:(LRSkinType) type
{
    LRSkinManger * manger=[LRSkinManger sharedInstance];
    manger.type=type;
    [[NSNotificationCenter defaultCenter]postNotificationName:@"LRSkinChange" object:nil];
}


+(LRSkinModel *)NowSkin
{
    LRSkinManger * manger=[LRSkinManger sharedInstance];
    if(!manger.type)
    {
        LRSkinModel *model=[[LRSkinModel alloc]init];
        model.labelCorol=[UIColor blackColor];
        model.backCorol=[UIColor whiteColor];
        return model;
    }
    
    if(manger.type==LRSkinTypeDefult)
    {
        LRSkinModel *model=[[LRSkinModel alloc]init];
        model.labelCorol=[UIColor blackColor];
        model.backCorol=[UIColor whiteColor];
        return model;
    }else
    {
        LRSkinModel *model=[[LRSkinModel alloc]init];
        model.labelCorol=[UIColor whiteColor];
        model.backCorol=[UIColor grayColor];
        return model;
    }
    
}
@end

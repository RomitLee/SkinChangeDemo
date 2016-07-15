//
//  LRSkinManger.h
//  LRChangeSkinDemo
//
//  Created by RomitLee on 16/7/15.
//  Copyright © 2016年 BlueMobi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LRSkinModel.h"

typedef NS_ENUM(NSUInteger, LRSkinType) {
    LRSkinTypeDefult,
    LRSkinTypeBlack,
    
};

@interface LRSkinManger : NSObject


+(void )changeSkin:(LRSkinType) type;


+(LRSkinModel *)NowSkin;
@end

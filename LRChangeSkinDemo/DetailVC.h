//
//  DetailVC.h
//  LRChangeSkinDemo
//
//  Created by RomitLee on 16/7/15.
//  Copyright © 2016年 BlueMobi. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "LRSkinLabel.h"
#import "LRSkinView.h"

@interface DetailVC : UIViewController
@property (weak, nonatomic) IBOutlet LRSkinView *backView;
@property (weak, nonatomic) IBOutlet LRSkinLabel *mainLabel;

@end

//
//  HomeCell.h
//  LRChangeSkinDemo
//
//  Created by RomitLee on 16/7/15.
//  Copyright © 2016年 BlueMobi. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "LRSkinLabel.h"
#import "LRSkinView.h"

@interface HomeCell : UITableViewCell
@property (weak, nonatomic) IBOutlet LRSkinView *backVie;

@property (weak, nonatomic) IBOutlet LRSkinLabel *mainLabel;

@end

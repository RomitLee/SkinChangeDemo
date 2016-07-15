//
//  DetailVC.m
//  LRChangeSkinDemo
//
//  Created by RomitLee on 16/7/15.
//  Copyright © 2016年 BlueMobi. All rights reserved.
//

#import "DetailVC.h"
#import "LRSkinManger.h"

@interface DetailVC ()

@end

@implementation DetailVC

- (void)viewDidLoad {
    [super viewDidLoad];
    self.backView.backgroundColor=[LRSkinManger NowSkin].backCorol;
    self.mainLabel.textColor=[LRSkinManger NowSkin].labelCorol;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

//
//  HomeVC.m
//  LRChangeSkinDemo
//
//  Created by RomitLee on 16/7/15.
//  Copyright © 2016年 BlueMobi. All rights reserved.
//

#import "HomeVC.h"
#import "DetailVC.h"
#import "LRSkinLabel.h"
#import "HomeCell.h"
#import "LRSkinManger.h"

@interface HomeVC ()<UITableViewDataSource,UITableViewDelegate>
{
    
}

@end

@implementation HomeVC

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title=@"首页";
    self.tableVIew.delegate=self;
    self.tableVIew.dataSource=self;
    [self.tableVIew registerClass:[UITableViewCell class] forCellReuseIdentifier:@"UITableViewCell"];
    
    [self.tableVIew registerNib:[UINib nibWithNibName:@"HomeCell" bundle:nil] forCellReuseIdentifier:@"HomeCell"];
    
    
    UISwitch *swtih=[[UISwitch alloc]init];
    swtih.on=YES;
    [swtih addTarget:self action:@selector(switchAction:) forControlEvents:UIControlEventValueChanged];

    UINavigationBar *bar=[[UINavigationBar alloc]init];
    UINavigationItem *item=[[UINavigationItem alloc]init];
    
    UIBarButtonItem *items=[[UIBarButtonItem alloc]initWithCustomView:swtih];
    item.leftBarButtonItem=items;
    
    self.navigationItem.leftBarButtonItem=items;
    

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section;
{
    return 40;
}

// Row display. Implementers should *always* try to reuse cells by setting each cell's reuseIdentifier and querying for available reusable cells with dequeueReusableCellWithIdentifier:
// Cell gets various attributes set automatically based on table (separators) and data source (accessory views, editing controls)

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    HomeCell *cell=[tableView dequeueReusableCellWithIdentifier:@"HomeCell" forIndexPath:indexPath];
    if(cell==nil)
    {
        cell=[[[NSBundle mainBundle ]loadNibNamed:@"HomeCell" owner:self options:nil]lastObject];
        
    }
    
    
    
    cell.mainLabel.textColor=[LRSkinManger NowSkin].labelCorol;
    cell.backVie.backgroundColor=[LRSkinManger NowSkin].backCorol;
    cell.mainLabel.text=@"测试测试用";
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    DetailVC *detail=[[DetailVC alloc]init];
    [self.navigationController pushViewController:detail animated:YES];
}

-(void)switchAction:(UISwitch *)swtih
{
    if(swtih.on)
    {
        [LRSkinManger changeSkin:LRSkinTypeDefult];
    }
    else
    {
        [LRSkinManger changeSkin:LRSkinTypeBlack];
    }
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

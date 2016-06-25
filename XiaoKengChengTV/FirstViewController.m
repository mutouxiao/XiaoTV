//
//  FirstViewController.m
//  XiaoKengChengTV
//
//  Created by 株式会社H&T on 16/6/17.
//  Copyright © 2016年 株式会社H&T. All rights reserved.
//

#import "FirstViewController.h"
#import "Masonry.h"


@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    UIView *view = [UIView new];
    view.backgroundColor = [UIColor redColor];
    [self.view addSubview:view];
    [view mas_makeConstraints:^(MASConstraintMaker *make) {
        make.width.height.equalTo(@100);
        make.top.left.equalTo(@0);
        
        NSLog(@"view:%@",NSStringFromCGRect(view.frame));
    }];
    
    UIView *view1 = [UIView new];
    view1.backgroundColor = [UIColor orangeColor];
    [self.view addSubview:view1];
    [view1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.width.top.height.equalTo(view);
        make.left.equalTo(view.mas_right).offset(100);
        
        NSLog(@"view1:%@",NSStringFromCGRect(view1.frame));
    }];
    
    
    
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

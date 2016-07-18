//
//  ViewController.m
//  AllowPCLoginIn
//
//  Created by sunhong on 16/7/18.
//  Copyright © 2016年 sunhong. All rights reserved.
//

#import "ViewController.h"

#import "AllowPCViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor whiteColor];
    
    [self setUpScanBtn];
}

- (void)setUpScanBtn {
    
    CGRect btnFrame = CGRectMake(0, 0, 100, 50);
    UIButton *scanButton = [UIButton buttonWithType:UIButtonTypeSystem];
    scanButton.frame = btnFrame;
    scanButton.center = self.view.center;
    [scanButton setTitle:@"扫码后转界面" forState:UIControlStateNormal];
    [scanButton addTarget:self action:@selector(btnAction) forControlEvents:UIControlEventTouchUpInside];
    [scanButton setBackgroundColor:[UIColor cyanColor]];
    [self.view addSubview:scanButton];
}

- (void)btnAction {
    
    AllowPCViewController *allowPCVC = [[AllowPCViewController alloc] init];
    
    allowPCVC.MakeSureLoginBlock = ^(){
        NSLog(@"确认登录");
    };
    allowPCVC.CancellLoginBlock = ^(){
        NSLog(@"取消");
    };
    
    [self.navigationController pushViewController:allowPCVC animated:YES];
}


@end

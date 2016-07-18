//
//  AllowPCViewController.m
//  AllowPCLoginIn
//
//  Created by sunhong on 16/7/18.
//  Copyright © 2016年 sunhong. All rights reserved.
//

#import "AllowPCViewController.h"

#import "AllowPCLoginIn.h"

@interface AllowPCViewController ()

@property (nonatomic, strong) AllowPCLoginIn * allowPCView;

@end

@implementation AllowPCViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    //创建扫码后界面view
    [self setupAllowPCView];
}

- (void)setupAllowPCView {
    
    CGFloat xPixel = 0;
    CGFloat yPixel = 0;
    if (_naviNotNative) {
        yPixel = 64.f;
    }
    CGFloat width = self.view.bounds.size.width;
    CGFloat height = self.view.bounds.size.height;
    CGRect viewFrame = CGRectMake(xPixel, yPixel, width, height);
    AllowPCLoginIn* allowPCView = [[AllowPCLoginIn alloc] initWithFrame:CGRectZero];
    allowPCView.frame = viewFrame;
    
    self.allowPCView = allowPCView;
    [self.view addSubview:allowPCView];
    
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

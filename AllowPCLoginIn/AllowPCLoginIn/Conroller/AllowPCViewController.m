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
    
    self.title = @"扫码";
    self.view.backgroundColor = [UIColor whiteColor];
    //创建扫码后界面view
    [self setupAllowPCView];
}

- (void)setupAllowPCView {
    
    CGFloat xPixel = 0;
    CGFloat yPixel = 64.f;
    CGFloat width = self.view.bounds.size.width;
    CGFloat height = self.view.bounds.size.height;
    CGRect viewFrame = CGRectMake(xPixel, yPixel, width, height);
    AllowPCLoginIn* allowPCView = [[AllowPCLoginIn alloc] initWithFrame:CGRectZero];
    allowPCView.frame = viewFrame;
    
    UIButton* sureBtn = [allowPCView viewWithTag:151];
    UIButton* cancelBtn = [allowPCView viewWithTag:152];
    UIImageView* pcImageView = [allowPCView viewWithTag:153];
    UILabel* line1Label = [allowPCView viewWithTag:154];
    UILabel* line2Label = [allowPCView viewWithTag:155];
    
    [sureBtn addTarget:self action:@selector(clickSureBtn) forControlEvents:UIControlEventTouchUpInside];
    [cancelBtn addTarget:self action:@selector(clickCancelBtn) forControlEvents:UIControlEventTouchUpInside];
    pcImageView.image = [UIImage imageNamed:@"icon_pc"];
    line1Label.text = @"即将在电脑上登录";
    line2Label.text = @"请确认是否本人操作";
    
    self.allowPCView = allowPCView;
    [self.view addSubview:allowPCView];
    
}

/**
 *  点击确定登录按钮
 */
- (void)clickSureBtn {
    self.MakeSureLoginBlock();
}
/**
 *  点击取消按钮
 */
- (void)clickCancelBtn {
    self.CancellLoginBlock();
}


@end

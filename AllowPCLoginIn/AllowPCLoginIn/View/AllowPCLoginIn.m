//
//  AllowPCLoginIn.m
//  AllowPCLoginIn
//
//  Created by sunhong on 16/7/18.
//  Copyright © 2016年 sunhong. All rights reserved.
//

#import "AllowPCLoginIn.h"

@interface AllowPCLoginIn ()

@end

@implementation AllowPCLoginIn

- (instancetype)init {
    return nil;
}

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor clearColor];
        
        [self setupDefaultView];
        [self setNeedsLayout];
    }
    return self;
}

- (void)setupDefaultView {
    
    UIImageView *pcImageView = [[UIImageView alloc] initWithFrame:CGRectZero];
    pcImageView.backgroundColor = [UIColor clearColor];
    [self addSubview:pcImageView];
    
    UILabel *makeSureLabel = [[UILabel alloc] initWithFrame:CGRectZero];
    makeSureLabel.backgroundColor = [UIColor clearColor];
    makeSureLabel.numberOfLines = 2;
    [self addSubview:makeSureLabel];
    
    UIButton *sureBtn = [self setupCommonButtonWithFrame:CGRectZero];
    sureBtn.backgroundColor = [UIColor colorWithRed:0.000 green:0.502 blue:1.000 alpha:1.000];
    [sureBtn setTitle:@"确认登录" forState:UIControlStateNormal];
    sureBtn.tintColor = [UIColor whiteColor];
    sureBtn.tag = 151;
    self.sureBtn = sureBtn;
    [self addSubview:sureBtn];
    
    UIButton *cancelBtn = [self setupCommonButtonWithFrame:CGRectZero];
    cancelBtn.backgroundColor = [UIColor whiteColor];
    cancelBtn.layer.borderColor = [UIColor colorWithWhite:0.762 alpha:1.000].CGColor;
    [cancelBtn setTitle:@"取消" forState:UIControlStateNormal];
    cancelBtn.tintColor = [UIColor colorWithWhite:0.502 alpha:1.000];
    cancelBtn.tag = 152;
    self.cancelBtn = cancelBtn;
    [self addSubview:cancelBtn];
}

- (UIButton *)setupCommonButtonWithFrame:(CGRect)btnFrame {
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeSystem];
    button.frame = btnFrame;
    
    button.titleLabel.font = [UIFont boldSystemFontOfSize:17.f];
    
    button.layer.cornerRadius = 5;
    button.layer.borderWidth = 1;
    button.layer.masksToBounds = YES;
    button.layer.borderColor = [UIColor clearColor].CGColor;
    
    return button;
}

- (void)layoutSubviews {
    [super layoutSubviews];
    CGFloat yPixel1 = self.bounds.size.height*0.5;
    CGFloat btnSpace = 30;
    
    CGFloat btnXpixel = 20;
    CGFloat btnWidth = self.bounds.size.width - btnXpixel * 2;
    CGFloat btnHeight = 50;
    CGRect sureBtnFrame = CGRectMake(btnXpixel, yPixel1, btnWidth, btnHeight);
    
    CGFloat yPixel2 = yPixel1 + btnHeight + btnSpace;
    CGRect cancelBtnFrame = CGRectMake(btnXpixel, yPixel2, btnWidth, btnHeight);
    
    self.sureBtn.frame = sureBtnFrame;
    self.cancelBtn.frame = cancelBtnFrame;
}


@end

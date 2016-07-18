//
//  AllowPCLoginIn.m
//  AllowPCLoginIn
//
//  Created by sunhong on 16/7/18.
//  Copyright © 2016年 sunhong. All rights reserved.
//

#import "AllowPCLoginIn.h"

@interface AllowPCLoginIn ()

//确认登陆按钮
@property (nonatomic, strong) UIButton * sureBtn;

//取消登录按钮
@property (nonatomic, strong) UIButton * cancelBtn;

//显示电脑图片
@property (nonatomic, strong) UIImageView * pcImageView;
//第一行文字
@property (nonatomic, strong) UILabel * line1Label;
//第二行文字
@property (nonatomic, strong) UILabel * line2Label;

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
    pcImageView.tag = 153;
    self.pcImageView = pcImageView;
    [self addSubview:pcImageView];
    
    UILabel *line1Label = [self setupCommonLabelWithFrame:CGRectZero];
    line1Label.tag = 154;
    self.line1Label = line1Label;
    [self addSubview:line1Label];
    
    UILabel *line2Label = [self setupCommonLabelWithFrame:CGRectZero];
    line2Label.tag = 155;
    self.line2Label = line2Label;
    [self addSubview:line2Label];
    
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

/**
 *  创建公共label
 *
 */
- (UILabel *)setupCommonLabelWithFrame:(CGRect)labelFrame {
    
    UILabel *label = [[UILabel alloc] initWithFrame:labelFrame];
    
    label.backgroundColor = [UIColor clearColor];
    label.textAlignment = NSTextAlignmentCenter;
    label.font = [UIFont boldSystemFontOfSize:17.f];
    label.textColor = [UIColor colorWithWhite:0.762 alpha:1.000];
    
    return label;
}
/**
 *  创建公共button
 *
 */
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
    
    CGFloat viewWidth = self.bounds.size.width;
    CGFloat viewHeight = self.bounds.size.height;
    
    CGFloat imageYpixel = 50;
    CGFloat imageWidth = viewWidth / 2;
    CGFloat imageXpixel = (viewWidth - imageWidth) * 0.5;
    CGFloat imageHeight = imageWidth * 200 / 284;
    CGRect imageViewFrame = CGRectMake(imageXpixel, imageYpixel, imageWidth, imageHeight);
    
    CGFloat labelXpixel = 0;
    CGFloat labelWidth = viewWidth;
    CGFloat labelHeight = 20;
    
    CGFloat label1Ypixel = imageYpixel + imageHeight + 30;
    CGFloat label2Ypixel = label1Ypixel + labelHeight + 20;
    CGRect label1Frame = CGRectMake(labelXpixel, label1Ypixel, labelWidth, labelHeight);
    CGRect label2Frame = CGRectMake(labelXpixel, label2Ypixel, labelWidth, labelHeight);
    
    CGFloat btn1Ypixel = label2Ypixel + labelHeight + imageYpixel;
    CGFloat btnSpace = 30;
    
    CGFloat btnXpixel = 20;
    CGFloat btnWidth = viewWidth - btnXpixel * 2;
    CGFloat btnHeight = 50;
    CGRect sureBtnFrame = CGRectMake(btnXpixel, btn1Ypixel, btnWidth, btnHeight);
    
    CGFloat btn2Ypixel = btn1Ypixel + btnHeight + btnSpace;
    CGRect cancelBtnFrame = CGRectMake(btnXpixel, btn2Ypixel, btnWidth, btnHeight);
    
    self.sureBtn.frame = sureBtnFrame;
    self.cancelBtn.frame = cancelBtnFrame;
    
    self.pcImageView.frame = imageViewFrame;
    self.line1Label.frame = label1Frame;
    self.line2Label.frame = label2Frame;
}


@end

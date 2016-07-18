//
//  AllowPCViewController.h
//  AllowPCLoginIn
//
//  Created by sunhong on 16/7/18.
//  Copyright © 2016年 sunhong. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AllowPCViewController : UIViewController

@property (nonatomic, assign) BOOL naviNotNative;

@property (nonatomic, copy) void(^MakeSureLoginBlock)();

@property (nonatomic, copy) void(^CancellLoginBlock)();

@end

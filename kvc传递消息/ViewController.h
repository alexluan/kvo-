//
//  ViewController.h
//  kvc传递消息
//
//  Created by 栾有数 on 15/8/7.
//  Copyright (c) 2015年 栾有数. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (nonatomic, weak) NSString * str;
@property (nonatomic, weak) NSString * property;
@property (strong, nonatomic) IBOutlet UIScrollView *scrollView;
@property (strong, nonatomic) IBOutlet UIButton *button;
@end


//
//  ViewController.m
//  kvc传递消息
//
//  Created by 栾有数 on 15/8/7.
//  Copyright (c) 2015年 栾有数. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (nonatomic, strong) id object;
@property (nonatomic, strong) NSString * propertyq;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    CGRect rectScroll = self.scrollView.frame;
    self.scrollView.contentSize = CGSizeMake(rectScroll.size.width, rectScroll.size.height*2);
    [self.scrollView addObserver:self forKeyPath:@"contentOffset" options:0 context:nil];//kvo
    [self addObserver:self forKeyPath:@"property" options:0 context:nil];//kvo
}
-(void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary *)change context:(void *)context{
    if ([keyPath isEqualToString:@"property"]) {
        NSLog(@"接收到了property");
    }
    if ([keyPath isEqualToString:@"contentOffset"]) {
        NSLog(@"接收到了contentOffset");
    }
    
}
- (IBAction)tttt:(id)sender {
    self.property = @"12345";
}
-(void)dealloc{
    [self removeObserver:self forKeyPath:@"property"];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

//
//  ViewController.m
//  FCustomVerificationCode
//
//  Created by AoChen on 2019/6/13.
//  Copyright © 2019 Ac. All rights reserved.
//

#import "ViewController.h"
#import "VerCodeView.h"
#import "CaptchaView.h"
@interface ViewController ()
@property (nonatomic, strong) VerCodeView *codeImageView;
@property (nonatomic, strong) CaptchaView *captchaView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.codeImageView = [[VerCodeView alloc] initWithFrame:CGRectMake(20, 200, 150, 40)];
    self.codeImageView.bolck = ^(NSString *imageCodeStr){//看情况是否需要
        NSLog(@"imageCodeStr = %@",imageCodeStr);
    };
    [self.codeImageView freshVerCode];
    [self.view addSubview: self.codeImageView];
    
    
    //显示验证码界面
    self.captchaView = [[CaptchaView alloc] initWithFrame:CGRectMake(200, 200, 150, 40)];
    [self.view addSubview:self.captchaView];
    
    //提示文字
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(([UIScreen mainScreen].bounds.size.width - 100)/2, 100, 100, 40)];
    label.text = @"点击图片换验证码";
    label.font = [UIFont systemFontOfSize:12];
    label.textColor = [UIColor grayColor];
    [self.view addSubview:label];
}


@end

//
//  ViewController.m
//  ZLImageTextButton
//
//  Created by zhaoliang chen on 2017/11/3.
//  Copyright © 2017年 zhaoliang chen. All rights reserved.
//

#import "ViewController.h"
#import <Masonry/Masonry.h>
#import "ZLImageTextButton.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    ZLImageTextButton* btn1 = [ZLImageTextButton buttonWithType:UIButtonTypeCustom];
    btn1.zlButtonType = ZLImageTopTextBottom;
    [btn1 setImage:[UIImage imageNamed:@"image1"] forState:UIControlStateNormal];
    [btn1 setTitle:@"图上文下" forState:UIControlStateNormal];
    [self.view addSubview:btn1];
    [btn1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.mas_equalTo(self.view);
        make.top.mas_equalTo(50);
        make.width.mas_equalTo(100);
        make.height.mas_equalTo(70);
    }];
    
    ZLImageTextButton* btn2 = [ZLImageTextButton buttonWithType:UIButtonTypeCustom];
    btn2.zlButtonType = ZLImageBottomTextTop;
    [btn2 setImage:[UIImage imageNamed:@"image1"] forState:UIControlStateNormal];
    [btn2 setTitle:@"图下文上" forState:UIControlStateNormal];
    [self.view addSubview:btn2];
    [btn2 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.mas_equalTo(self.view);
        make.top.mas_equalTo(btn1.mas_bottom).offset(50);
        make.width.mas_equalTo(70);
        make.height.mas_equalTo(100);
    }];
    
    ZLImageTextButton* btn3 = [ZLImageTextButton buttonWithType:UIButtonTypeCustom];
    btn3.zlButtonType = ZLImageRightTextLeft;
    [btn3 setImage:[UIImage imageNamed:@"image2"] forState:UIControlStateNormal];
    [btn3 setTitle:@"图右文左" forState:UIControlStateNormal];
    [self.view addSubview:btn3];
    [btn3 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.mas_equalTo(self.view);
        make.top.mas_equalTo(btn2.mas_bottom).offset(50);
        make.width.mas_equalTo(100);
        make.height.mas_equalTo(50);
    }];
    
    ZLImageTextButton* btn4 = [ZLImageTextButton buttonWithType:UIButtonTypeCustom];
    btn4.zlButtonType = ZLImageLeftTextRight;
    [btn4 setImage:[UIImage imageNamed:@"image2"] forState:UIControlStateNormal];
    [btn4 setTitle:@"图左文右" forState:UIControlStateNormal];
    [self.view addSubview:btn4];
    [btn4 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.mas_equalTo(self.view);
        make.top.mas_equalTo(btn3.mas_bottom).offset(50);
        make.width.mas_equalTo(100);
        make.height.mas_equalTo(50);
    }];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end

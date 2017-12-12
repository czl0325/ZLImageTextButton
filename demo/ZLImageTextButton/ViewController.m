//
//  ViewController.m
//  ZLImageTextButton
//
//  Created by zhaoliang chen on 2017/11/3.
//  Copyright © 2017年 zhaoliang chen. All rights reserved.
//

#import "ViewController.h"
#import "ZLImageTextButton.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    ZLImageTextButton* btn1 = [ZLImageTextButton buttonWithType:UIButtonTypeCustom];
    btn1.zlButtonType = ZLImageTopTextBottom;
    btn1.frame = CGRectMake(50, 50, 100, 70);
    [btn1 setImage:[UIImage imageNamed:@"image1"] forState:UIControlStateNormal];
    [btn1 setTitle:@"图上文下" forState:UIControlStateNormal];
    [self.view addSubview:btn1];
    
    ZLImageTextButton* btn2 = [ZLImageTextButton buttonWithType:UIButtonTypeCustom];
    btn2.zlButtonType = ZLImageBottomTextTop;
    [btn2 setImage:[UIImage imageNamed:@"image1"] forState:UIControlStateNormal];
    btn2.frame = CGRectMake(50, 150, 100, 70);
    [btn2 setTitle:@"图下文上" forState:UIControlStateNormal];
    [self.view addSubview:btn2];
    
    ZLImageTextButton* btn3 = [ZLImageTextButton buttonWithType:UIButtonTypeCustom];
    btn3.zlButtonType = ZLImageRightTextLeft;
    [btn3 setImage:[UIImage imageNamed:@"image2"] forState:UIControlStateNormal];
    [btn3 setTitle:@"图右文左" forState:UIControlStateNormal];
    btn3.frame = CGRectMake(50, 250, 100, 70);
    [self.view addSubview:btn3];
    
    ZLImageTextButton* btn4 = [ZLImageTextButton buttonWithType:UIButtonTypeCustom];
    btn4.zlButtonType = ZLImageLeftTextRight;
    [btn4 setImage:[UIImage imageNamed:@"image2"] forState:UIControlStateNormal];
    [btn4 setTitle:@"图左文右" forState:UIControlStateNormal];
    btn4.frame = CGRectMake(50, 350, 100, 70);
    [self.view addSubview:btn4];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end

# ZLImageTextButton


支持图左文右，图右文左，图上文下，图下文上4种模式的按钮，支持autolayout

---
11.22更新版本：<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1.增加了cocoapods的支持。<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2.增加了CGSize zlImageSize属性，可以自定义图片的大小，防止图片过大的情况，如果没有定制，有默认的图片大小。<br>
---

效果图

![](https://github.com/czl0325/ZLImageTextButton/blob/master/%E6%95%88%E6%9E%9C%E5%9B%BE.png?raw=true)


用法
```Objective-C
//导入ZLImageTextButton的类
    #import "ZLImageTextButton.h"


    ZLImageTextButton* btn1 = [ZLImageTextButton buttonWithType:UIButtonTypeCustom];
    btn1.zlButtonType = ZLImageTopTextBottom;	//指定按钮的类型，未指定默认是图左问右
    [btn1 setImage:[UIImage imageNamed:@"image1"] forState:UIControlStateNormal];
    [btn1 setTitle:@"图上文下" forState:UIControlStateNormal];
    [self.view addSubview:btn1];
    [btn1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.mas_equalTo(self.view);
        make.top.mas_equalTo(50);
        make.width.mas_equalTo(100);
        make.height.mas_equalTo(70);
    }];

```

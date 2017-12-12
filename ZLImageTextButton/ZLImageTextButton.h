//
//  ZLImageTextButton.h
//  ZLImageTextButton
//
//  Created by zhaoliang chen on 2017/11/3.
//  Copyright © 2017年 zhaoliang chen. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef enum {
    ZLImageLeftTextRight = 1,
    ZLImageRightTextLeft,
    ZLImageTopTextBottom,
    ZLImageBottomTextTop,
} ZLButtonType;

@interface ZLImageTextButton : UIButton

@property(nonatomic,assign)ZLButtonType zlButtonType;
@property(nonatomic,assign)CGSize zlImageSize;

@end

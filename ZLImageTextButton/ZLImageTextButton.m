//
//  ZLImageTextButton.m
//  ZLImageTextButton
//
//  Created by zhaoliang chen on 2017/11/3.
//  Copyright © 2017年 zhaoliang chen. All rights reserved.
//

#import "ZLImageTextButton.h"

@interface ZLImageTextButton()

@property(nonatomic,strong)UIImageView* zlImageView;
@property(nonatomic,strong)UILabel* zlTextLabel;        

@end

@implementation ZLImageTextButton

#define ImageTextDistance   3

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        self.zlButtonType = ZLImageLeftTextRight;
        [self addSubview:self.zlImageView];
        [self addSubview:self.zlTextLabel];
        self.imageView.hidden = YES;
        self.titleLabel.hidden = YES;
        self.zlImageSize = CGSizeZero;
    }
    return self;
}

- (void)setZlButtonType:(ZLButtonType)zlButtonType {
    _zlButtonType = zlButtonType;
    if (_zlButtonType == ZLImageTopTextBottom
        ||_zlButtonType == ZLImageBottomTextTop) {
        self.zlTextLabel.textAlignment = NSTextAlignmentCenter;
    } else if (_zlButtonType == ZLImageRightTextLeft) {
        self.zlTextLabel.textAlignment = NSTextAlignmentRight;
    } else {
        self.zlTextLabel.textAlignment = NSTextAlignmentLeft;
    }
    [self setNeedsLayout];
}

- (void)layoutSubviews {
    [super layoutSubviews];
    CGFloat btnWidth = self.frame.size.width;
    CGFloat btnHeight = self.frame.size.height;
    CGFloat labelHeight = [self.zlTextLabel.text sizeWithAttributes:[NSDictionary dictionaryWithObjectsAndKeys:self.zlTextLabel.font, NSFontAttributeName,nil]].height;
    CGFloat labelWidth = [self.zlTextLabel.text sizeWithAttributes:[NSDictionary dictionaryWithObjectsAndKeys:self.zlTextLabel.font, NSFontAttributeName,nil]].width;
    if (self.zlButtonType == ZLImageTopTextBottom) {
        if (CGSizeEqualToSize(self.zlImageSize, CGSizeZero)) {
            CGFloat imgWidth = (btnHeight-(labelHeight+4)-ImageTextDistance)>btnWidth?btnWidth:(btnHeight-(labelHeight+4)-ImageTextDistance);
            self.zlImageView.frame = CGRectMake((btnWidth-imgWidth)/2, 0, imgWidth, imgWidth);
            self.zlTextLabel.frame = CGRectMake(0, imgWidth+ImageTextDistance, btnWidth, (labelHeight+4));
        } else {
            CGFloat imgWidth = self.zlImageSize.width;
            CGFloat imgHeight = self.zlImageSize.height;
            self.zlImageView.frame = CGRectMake((btnWidth-imgWidth)/2, 0, imgWidth, imgHeight);
            self.zlTextLabel.frame = CGRectMake(0, imgWidth+ImageTextDistance, btnWidth, (labelHeight+4));
        }
    } else if (self.zlButtonType == ZLImageBottomTextTop) {
        self.zlTextLabel.textAlignment = NSTextAlignmentCenter;
        if (CGSizeEqualToSize(self.zlImageSize, CGSizeZero)) {
            CGFloat imgWidth = (btnHeight-(labelHeight+4)-ImageTextDistance)>btnWidth?btnWidth:(btnHeight-(labelHeight+4)-ImageTextDistance);
            self.zlImageView.frame = CGRectMake((btnWidth-imgWidth)/2, (labelHeight+4)+ImageTextDistance, imgWidth, imgWidth);
            self.zlTextLabel.frame = CGRectMake(0, 0, btnWidth, (labelHeight+4));
        } else {
            CGFloat imgWidth = self.zlImageSize.width;
            CGFloat imgHeight = self.zlImageSize.height;
            self.zlImageView.frame = CGRectMake((btnWidth-imgWidth)/2, (labelHeight+4)+ImageTextDistance, imgWidth, imgHeight);
            self.zlTextLabel.frame = CGRectMake(0, 0, btnWidth, (labelHeight+4));
        }
    } else if (self.zlButtonType == ZLImageRightTextLeft) {
        if (CGSizeEqualToSize(self.zlImageSize, CGSizeZero)) {
            CGFloat imgHeight = 0;
            if (btnWidth-labelWidth-ImageTextDistance < 0) {
                imgHeight = btnWidth/3;
                labelWidth = btnWidth*2/3;
            } else {
                imgHeight = btnHeight>(btnWidth-labelWidth-ImageTextDistance)?(btnWidth-labelWidth-ImageTextDistance):btnHeight;
            }
            self.zlImageView.frame = CGRectMake(btnWidth-imgHeight, (btnHeight-imgHeight)/2, imgHeight, imgHeight);
            self.zlTextLabel.frame = CGRectMake(0, (btnHeight-labelHeight)/2, (btnWidth-imgHeight-ImageTextDistance)>labelWidth?(btnWidth-imgHeight-ImageTextDistance):labelWidth, labelHeight);
        } else {
            CGFloat imgWidth = self.zlImageSize.width;
            CGFloat imgHeight = self.zlImageSize.height;
            if (btnWidth-labelWidth-ImageTextDistance < 0) {
                imgWidth = btnWidth/3;
                imgHeight = imgWidth;
                labelWidth = btnWidth*2/3;
            }
            self.zlImageView.frame = CGRectMake(btnWidth-imgWidth, (btnHeight-imgHeight)/2, imgWidth, imgHeight);
            self.zlTextLabel.frame = CGRectMake(0, (btnHeight-labelHeight)/2, (btnWidth-imgWidth-ImageTextDistance)>labelWidth?(btnWidth-imgWidth-ImageTextDistance):labelWidth, labelHeight);
        }
    } else {
        if (CGSizeEqualToSize(self.zlImageSize, CGSizeZero)) {
            CGFloat imgHeight = 0;
            if (btnWidth-labelWidth-ImageTextDistance < 0) {
                imgHeight = btnWidth/3;
                labelWidth = btnWidth*2/3;
            } else {
                imgHeight = btnHeight>(btnWidth-labelWidth-ImageTextDistance)?(btnWidth-labelWidth-ImageTextDistance):btnHeight;
            }
            self.zlImageView.frame = CGRectMake(0, (btnHeight-imgHeight)/2, imgHeight, imgHeight);
            self.zlTextLabel.frame = CGRectMake(btnWidth-labelWidth, (btnHeight-labelHeight)/2, labelWidth, labelHeight);
        } else {
            CGFloat imgWidth = self.zlImageSize.width;
            CGFloat imgHeight = self.zlImageSize.height;
            if (btnWidth-labelWidth-ImageTextDistance < 0) {
                imgWidth = btnWidth/3;
                imgHeight = imgWidth;
                labelWidth = btnWidth*2/3;
            }
            self.zlImageView.frame = CGRectMake(0, (btnHeight-imgHeight)/2, imgWidth, imgHeight);
            self.zlTextLabel.frame = CGRectMake(imgWidth+ImageTextDistance, (btnHeight-labelHeight)/2, (btnWidth-imgWidth)>labelWidth?(btnWidth-imgWidth):labelWidth, labelHeight);
        }
    }
}

- (void)setImage:(UIImage *)image forState:(UIControlState)state {
    self.zlImageView.image = image;
    self.imageView.image = image;
    [self setNeedsLayout];
}

- (void)setTitle:(NSString *)title forState:(UIControlState)state {
    self.zlTextLabel.text = title;
    self.titleLabel.text = title;
    [self setNeedsLayout];
}

- (void)setTitleColor:(UIColor *)color forState:(UIControlState)state {
    self.zlTextLabel.textColor = color;
    self.titleLabel.textColor = color;
    [self setNeedsLayout];
}

- (UIImageView*)zlImageView {
    if (!_zlImageView) {
        _zlImageView = [[UIImageView alloc]init];
        _zlImageView.contentMode = UIViewContentModeScaleAspectFit;
    }
    return _zlImageView;
}

- (UILabel*)zlTextLabel {
    if (!_zlTextLabel) {
        _zlTextLabel = [[UILabel alloc]init];
        _zlTextLabel.font = [UIFont systemFontOfSize:12];
        _zlTextLabel.textColor = [UIColor blackColor];
        _zlTextLabel.lineBreakMode = NSLineBreakByWordWrapping;
    }
    return _zlTextLabel;
}

@end

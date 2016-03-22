//
//  XPCheckBox.m
//  XPFormControls
//
//  Created by xiaopin on 16/1/15.
//  Copyright © 2016年 pinguo. All rights reserved.
//

#import "XPCheckBox.h"

@interface XPCheckBox ()

@property (nonatomic,strong) UIImageView *imgView;
@property (nonatomic,strong) UILabel *labText;
@property (nonatomic,strong) UIButton *button;

@end

@implementation XPCheckBox

-(UIImageView *)imgView{
    if(!_imgView){
        _imageSize = _imageSize == 0 ?20:_imageSize;
        CGFloat y = (self.bounds.size.height - _imageSize)/2;
        y = y < 0?0:y;
        _imgView = [[UIImageView alloc] initWithFrame:CGRectMake(5, y, _imageSize, _imageSize)];
        _imgView.image = [UIImage imageNamed:@"xpf_rb_2_0"];
        _imgView.contentMode = UIViewContentModeScaleToFill;
    }
    return _imgView;
}

- (UILabel *)labText{
    if(!_labText){
        CGFloat x = self.imgView.frame.origin.x + self.imgView.frame.size.width + 3;
        CGFloat width = self.bounds.size.width - x;
        _labText = [[UILabel alloc] initWithFrame:CGRectMake(x, 0, width, self.bounds.size.height)];
        _labText.textAlignment = NSTextAlignmentLeft;
        _labText.font = [UIFont systemFontOfSize:12];
        _labText.numberOfLines = 1;
        _labText.lineBreakMode = NSLineBreakByTruncatingTail;
    }
    return _labText;
}

-(UIButton *)button{
    if(!_button){
        _button = [UIButton buttonWithType:UIButtonTypeCustom];
        _button.frame = self.bounds;
        [_button addTarget:self action:@selector(buttonClicked:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _button;
}

-(instancetype)initWithFrame:(CGRect)frame{
    if(self = [super initWithFrame:frame]){
        [self addSubview:self.button];
    }
    return self;
}

-(instancetype)initWithFrame:(CGRect)frame checkBoxStyle:(XPCheckBoxStyle)checkBoxStyle{
    if(self = [super initWithFrame:frame]){
        self.checkBoxStyle = checkBoxStyle;
        
        if(self.checkBoxStyle == XPCheckBoxStyleNoText){
            [self addSubview:self.imgView];
            [self addSubview:self.button];
            
            CGFloat width = frame.size.width;
            CGFloat height = frame.size.height;
            width = width>50?50:width;
            height = height > 50?50:height;
            self.frame = CGRectMake(frame.origin.x, frame.origin.y, width, height);
            self.imgView.frame = self.bounds;
            self.button.frame = self.bounds;
            self.imgView.image = [UIImage imageNamed:@"xpf_cb_2_0"];
        }else if (self.checkBoxStyle == XPCheckBoxStyleImageText){
            [self addSubview:self.imgView];
            [self addSubview:self.labText];
            [self addSubview:self.button];
            
            self.imgView.image = [UIImage imageNamed:@"xpf_cb_2_0"];
        }else if(self.checkBoxStyle == XPCheckBoxStyleCustom){
            [self addSubview:self.imgView];
            [self addSubview:self.labText];
            [self addSubview:self.button];
            self.imgView.image = self.uncheckedImage;
        }
    }
    return self;
}

-(void)setCheckBoxStyle:(XPCheckBoxStyle)checkBoxStyle{
    _checkBoxStyle = checkBoxStyle;
    
}

-(void)setImageSize:(CGFloat)imageSize{
    _imageSize = imageSize;
    CGFloat y = (self.bounds.size.height - _imageSize)/2;
    y = y < 0?0:y;
    self.imgView.frame = CGRectMake(5, y, _imageSize, _imageSize);
    
    CGFloat x = self.imgView.frame.origin.x + self.imgView.frame.size.width + 3;
    CGFloat width = self.bounds.size.width - x;
    self.labText.frame = CGRectMake(x, 0, width, self.bounds.size.height);
}

-(void)setText:(NSString *)text{
    self.labText.text = text;
}

-(void)setTextColor:(UIColor *)textColor{
    self.labText.textColor = textColor;
}

-(void)setTextFont:(UIFont *)textFont{
    self.labText.font = textFont;
}

-(void)setUncheckedImage:(UIImage *)uncheckedImage{
    _uncheckedImage = uncheckedImage;
    self.imgView.image = uncheckedImage;
}

- (void)buttonClicked:(UIButton*)button{
    //点击后切换状态
    self.checked = self.checked ?NO:YES;
    
    //改变按钮的状态
    if(self.checkBoxStyle == XPCheckBoxStyleNoText){
        UIImage *image = self.checked ? [UIImage imageNamed:@"xpf_cb_2_1"]:[UIImage imageNamed:@"xpf_cb_2_0"];
        [self.button setBackgroundImage:image forState:UIControlStateNormal];
    } else if(self.checkBoxStyle == XPCheckBoxStyleImageText){
        self.imgView.image = self.checked ? [UIImage imageNamed:@"xpf_cb_2_1"]:[UIImage imageNamed:@"xpf_cb_2_0"];
    } else if(self.checkBoxStyle == XPCheckBoxStyleCustom){
        self.imgView.image = self.checked ? self.checkedImage :self.uncheckedImage;
    }
    
    //如果有Block就回调
    if(self.checkedBlock)
    {
        self.checkedBlock(self,self.checked);
    }
}

@end

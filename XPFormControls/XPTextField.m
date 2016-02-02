//
//  XPTextField.m
//  XPFormControls
//
//  Created by xiaopin on 16/1/15.
//  Copyright © 2016年 pinguo. All rights reserved.
//

#import "XPTextField.h"

@interface XPTextField ()<UITextFieldDelegate>
{
    CGFloat x,y,width,height;
}

@property (nonatomic,strong) UIImageView *leftImageView;
@property (nonatomic,strong) UITextField *textField;
@property (nonatomic,strong) UIView *bottomLine;

@end

@implementation XPTextField

-(UIImageView *)leftImageView{
    if(!_leftImageView){
        _leftImageView = [UIImageView new];
    }
    return _leftImageView;
}

-(UITextField *)textField{
    if(!_textField){
        _textField = [UITextField new];
        _textField.delegate = self;
        _textField.font = [UIFont systemFontOfSize:15];
        _textField.textColor = [UIColor blackColor];
        _textField.returnKeyType = UIReturnKeyDone;
        _textField.clearButtonMode = UITextFieldViewModeWhileEditing;
    }
    return _textField;
}

-(UIView *)bottomLine{
    if(!_bottomLine){
        _bottomLine = [UIView new];
    }
    return _bottomLine;
}

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
    }
    return self;
}

-(instancetype)initWithFrame:(CGRect)frame tfStyle:(XPTextFieldStyle)style{
    self = [super initWithFrame:frame];
    if (self) {
        self.style = style;
        
        if(self.style == XPTextFieldStyleDefault){
            self.textField.frame = self.bounds;
            self.textField.layer.cornerRadius = 5;
            self.textField.layer.masksToBounds = YES;
            self.textField.layer.borderColor = [UIColor blackColor].CGColor;
            self.textField.layer.borderWidth = 0.5f;
            [self addSubview:self.textField];
        }else if (self.style == XPTextFieldStyleCustom1){
            y = (frame.size.height - 20)/2+2;
            self.leftImageView.frame = CGRectMake(5, y, 20, 20);
            x = self.leftImageView.frame.origin.x + self.leftImageView.frame.size.width + 5;
            y = 2;
            width = frame.size.width - x;
            self.textField.frame = CGRectMake(x, y, width, frame.size.height);
            x = self.textField.frame.origin.x;
            y = self.textField.frame.origin.y+self.textField.frame.size.height;
            width = self.textField.frame.size.width;
            self.bottomLine.frame = CGRectMake(x, y, width, 0.5);
            [self addSubview:self.leftImageView];
            [self addSubview:self.textField];
            [self addSubview:self.bottomLine];
        }
    }
    return self;
}

-(void)setSecureTextEntry:(BOOL)secureTextEntry{
    _secureTextEntry = secureTextEntry;
    self.textField.secureTextEntry = secureTextEntry;
}

-(void)setText:(NSString *)text{
    _text = text;
    self.textField.text = text;
}

-(void)setTextColor:(UIColor *)textColor{
    _textColor = textColor;
    self.textField.textColor = textColor;
}

-(void)setTextFont:(UIFont *)textFont{
    _textFont = textFont;
    self.textField.font = textFont;
}

-(void)setPlaceHolder:(NSString *)placeHolder{
    _placeHolder = placeHolder;
    self.textField.placeholder = placeHolder;
}

-(void)setBorderColor:(UIColor *)borderColor{
    _borderColor = borderColor;
    self.textField.layer.borderColor = borderColor.CGColor;
}

-(void)setLeftImage:(UIImage *)leftImage{
    self.leftImageView.image = leftImage;
}

-(void)setBottomLineColor:(UIColor *)bottomLineColor{
    self.bottomLine.backgroundColor = bottomLineColor;
}

-(void)setBottomLineWidth:(CGFloat)bottomLineWidth{
    CGRect rect = self.bottomLine.frame;
    self.bottomLine.frame = CGRectMake(rect.origin.x, rect.origin.y, rect.size.width, bottomLineWidth);
}

-(void)setHasIcon:(BOOL)hasIcon{
    if(!hasIcon)
    {
        [self.leftImageView removeFromSuperview];
        self.textField.frame = CGRectMake(0, 2, self.frame.size.width, self.frame.size.height);
        x = self.textField.frame.origin.x;
        y = self.textField.frame.origin.y+self.textField.frame.size.height;
        width = self.textField.frame.size.width;
        self.bottomLine.frame = CGRectMake(x, y, width, 0.5);
    }
}

-(void)textFieldDidEndEditing:(UITextField *)textField{
    NSLog(@"textFieldDidEndEditing:%@",textField.text);
    _text = textField.text;
}

-(BOOL)textFieldShouldReturn:(UITextField *)textField{
    [textField resignFirstResponder];
    return YES;
}

@end

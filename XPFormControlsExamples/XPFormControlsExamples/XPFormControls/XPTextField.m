//
//  XPTextField.m
//  XPFormControls
//
//  Created by xiaopin on 16/1/15.
//  Copyright © 2016年 pinguo. All rights reserved.
//

#import "XPTextField.h"

@interface XPTextField ()<UITextFieldDelegate>

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

@end

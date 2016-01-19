//
//  XPRadioButton.h
//  XPFormControls
//
//  Created by xiaopin on 16/1/15.
//  Copyright © 2016年 pinguo. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef enum : NSUInteger {
    XPRadioStyleNoText,
    XPRadioStyleImageText,
    XPRadioStyleCustom
} XPRadioStyle;

typedef void(^CheckedBlock)(BOOL isSelected);

@interface XPRadioButton : UIButton

- (instancetype)initWithFrame:(CGRect)frame radioStyle:(XPRadioStyle)radioStyle;

@property (nonatomic,assign) XPRadioStyle radioStyle;
@property (nonatomic,assign) BOOL checked;
@property (nonatomic,copy) CheckedBlock checkedBlock;

@property (nonatomic,assign) CGFloat imageSize;
@property (nonatomic,strong) UIImage *uncheckedImage;
@property (nonatomic,strong) UIImage *checkedImage;

@property (nonatomic,strong) NSString *text;
@property (nonatomic,strong) UIColor *textColor;
@property (nonatomic,strong) UIFont *textFont;

@end

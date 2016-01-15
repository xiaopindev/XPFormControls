//
//  XPCheckBox.h
//  XPFormControls
//
//  Created by xiaopin on 16/1/15.
//  Copyright © 2016年 pinguo. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef enum : NSUInteger {
    XPCheckBoxStyleDefault,
    XPCheckBoxStyleCustom
} XPCheckBoxStyle;

@interface XPCheckBox : UIButton

/**
 *  风格样式，1.默认样式，2.自定义
 */
@property (nonatomic,assign) XPCheckBoxStyle style;
@property (nonatomic,assign) BOOL checked;
@property (nonatomic,strong) UIImage *uncheckedImage;
@property (nonatomic,strong) UIImage *checkedImage;

@end

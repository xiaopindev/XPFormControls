//
//  XPTextField.h
//  XPFormControls
//
//  Created by xiaopin on 16/1/15.
//  Copyright © 2016年 pinguo. All rights reserved.
//

#import <UIKit/UIKit.h>


typedef enum : NSInteger {
    XPTextFieldStyleDefault,
    XPTextFieldStyleOnlyBottomLine,
} XPTextFieldStyle;

@interface XPTextField : UIView

@property (nonatomic,assign) XPTextFieldStyle *textFieldStyle;
@property (nonatomic,strong) NSString *placeHolder;
@property (nonatomic,strong) NSString *text;

@end

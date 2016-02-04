//
//  XPTextField.h
//  XPFormControls
//
//  Created by xiaopin on 16/1/15.
//  Copyright © 2016年 pinguo. All rights reserved.
//

#import <UIKit/UIKit.h>


typedef enum : NSInteger {
    XPTextFieldStyleDefault,        //圆角有边框
    XPTextFieldStyleCustom1,         //自定义图标，底部颜色
} XPTextFieldStyle;

@interface XPTextField : UIView
{
    NSString *_text;
}

/**
 *  文本框样式
 */
@property (nonatomic,assign) XPTextFieldStyle style;
@property (nonatomic,strong) NSString *placeHolder;
@property (nonatomic,strong) UIColor *textColor;
@property (nonatomic,strong) UIFont *textFont;

/**
 *  是否安全显示文本，比如普通都是NO,密码YES会用*代替
 */
@property (nonatomic,assign) BOOL secureTextEntry;

/**
 *  边框色，针对 XPTextFieldStyleDefault
 */
@property (nonatomic,strong) UIColor *borderColor;
/**
 *  左边图片，针对 XPTextFieldStyleCustom1
 */
@property (nonatomic,strong) UIImage *leftImage;
/**
 *  底边线，针对 XPTextFieldStyleCustom1
 */
@property (nonatomic,strong) UIColor *bottomLineColor;
/**
 *  底边线粗度，针对 XPTextFieldStyleCustom1
 */
@property (nonatomic,assign) CGFloat bottomLineWidth;
/**
 *  是否有图标，针对 XPTextFieldStyleCustom1
 */
@property (nonatomic,assign) BOOL hasIcon;


- (instancetype)initWithFrame:(CGRect)frame tfStyle:(XPTextFieldStyle)style;

- (NSString*)text;
- (void)setText:(NSString*)text;

@end

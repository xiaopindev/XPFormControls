//
//  XPRadioButtonGroup.h
//  XPFormControls
//
//  Created by xiaopin on 16/1/15.
//  Copyright © 2016年 pinguo. All rights reserved.
//

#import <UIKit/UIKit.h>

/**
 *  单选列表
 */
@interface XPRadioButtonGroup : UIView

/**
 *  数据源，格式：[NSMutableArray arrayWithObjects:@"1,男",@"0,女",nil]
 */
@property (nonatomic,strong) NSMutableArray *items;

@property (nonatomic,assign) CGFloat imageSize;
@property (nonatomic,strong) UIFont *textFont;
@property (nonatomic,strong) UIColor *textColor;
@property (nonatomic,strong) UIImage *checkImage;
@property (nonatomic,strong) UIImage *uncheckImage;

@property (nonatomic,assign) NSInteger selectedIndex;
@property (nonatomic,strong) NSString *selectedValue;
@property (nonatomic,strong) NSString *selectedText;

@property (nonatomic, copy) void (^checkAction)(NSInteger index);

@end

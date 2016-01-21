//
//  XPRadioButtonGroup.m
//  XPFormControls
//
//  Created by xiaopin on 16/1/15.
//  Copyright © 2016年 pinguo. All rights reserved.
//

#import "XPRadioButtonGroup.h"
#import "XPRadioButton.h"

@interface XPRadioButtonGroup ()

@end

@implementation XPRadioButtonGroup

- (instancetype)initWithFrame:(CGRect)frame{
    if(self = [super initWithFrame:frame]){
        _imageSize = 20;
        _textFont = [UIFont systemFontOfSize:15];
        _textColor = [UIColor blackColor];
        _checkImage = [UIImage imageNamed:@"xpf_rb_2_1"];
        _uncheckImage = [UIImage imageNamed:@"xpf_rb_2_0"];
    }
    return self;
}

-(void)setItems:(NSMutableArray *)items{
    if(!items){return;}
    _items = items;
    
    [self loadData];
}

-(void)setSelectedIndex:(NSInteger)selectedIndex{
    _selectedIndex=selectedIndex;
    
    NSString *str = [self.items objectAtIndex:selectedIndex];
    NSArray *array = [str componentsSeparatedByString:@","];

    _selectedValue = [array objectAtIndex:0];
    _selectedText = [array objectAtIndex:1];
}

- (void)loadData{
    /**
        rowIndex = 第几行
        totalWidth = 总宽度
        rowWidth = 每行项总宽度
        itemWidth = 项宽度
     **/
    CGFloat rowIndex = 0;
    CGFloat totalWidth,totalHeight=0,rowWidth,itemWidth,itemHeight;
    totalWidth = self.bounds.size.width;
    rowWidth = 0;
    itemWidth = 0;
    itemHeight = 25;
    __weak typeof(self) weakSelf = self;
    for (int i = 0; i<self.items.count; i++)
    {
        //1.获取对象
        NSString *str = [self.items objectAtIndex:i];
        NSArray *array = [str componentsSeparatedByString:@","];
        
        itemWidth = [self autoStringWidth:[array objectAtIndex:1] textFont:self.textFont heightShow:itemHeight];
        itemHeight = [self autoStringHeight:[array objectAtIndex:1] textFont:self.textFont widthShow:itemWidth];
        itemWidth += (5+self.imageSize+3);
        itemHeight += 10;
        if((rowWidth+itemWidth) > totalWidth){
            //如果每行元素加起来大于当前视图宽度，换行
            rowIndex++;
            rowWidth = 0;
        }
        
        XPRadioButton *radio = [[XPRadioButton alloc] initWithFrame:CGRectMake(rowWidth, rowIndex * itemHeight, itemWidth, itemHeight)
                                                  radioStyle:XPRadioStyleCustom];
        radio.imageSize = self.imageSize;
        radio.text = [array objectAtIndex:1];
        radio.textColor = self.textColor;
        radio.textFont = self.textFont;
        radio.checkedImage = self.checkImage;
        radio.uncheckedImage = self.uncheckImage;
        radio.checkedBlock = ^(id responseObj, BOOL isChecked){
            if(isChecked){
                //移除所有选中状态，保留这个
                for (UIView *view in weakSelf.subviews)
                {
                    if([view isKindOfClass:[XPRadioButton class]])
                    {
                        XPRadioButton *radio = (XPRadioButton*)view;
                        radio.checked = NO;
                    }
                }
                XPRadioButton *currentRadio = (XPRadioButton*)responseObj;
                currentRadio.checked = YES;
                
                weakSelf.selectedIndex = i;
                
                //NSLog(@"%ld,%@,%@",weakSelf.selectedIndex,weakSelf.selectedValue,weakSelf.selectedText);
            }
        };
        [self addSubview:radio];

        //添加完后，对下个添加做坐标准备
        rowWidth += itemWidth;
        totalHeight = rowIndex*itemHeight;
    }
}

/**
 *  自动计算字符串宽度
 *
 *  @param str NSString 对象字符串
 *
 *  @return 宽度
 */
-(CGFloat)autoStringWidth:(NSString*)str textFont:(UIFont*)font heightShow:(CGFloat)height{
    if(!str)
    {
        NSLog(@"自动计算标签的高度,标签对象为nil");
        return 0;
    }
    else
    {
        NSDictionary *attribute = @{NSFontAttributeName:font};
        CGSize size = [str boundingRectWithSize:CGSizeMake(MAXFLOAT, height)
                                        options:NSStringDrawingUsesLineFragmentOrigin | NSStringDrawingUsesFontLeading
                                     attributes:attribute
                                        context:nil].size;
        return size.width + .5;
    }
}

/**
 *  自动计算字符串高度
 *
 *  @param str NSString 对象字符串
 *
 *  @return 高度
 */
- (CGFloat)autoStringHeight:(NSString*)str textFont:(UIFont*)font widthShow:(CGFloat)width{
    if(!str)
    {
        NSLog(@"自动计算标签的高度,标签对象为nil");
        return 0;
    }
    else
    {
        NSDictionary *attribute = @{NSFontAttributeName:font};
        CGSize size = [str boundingRectWithSize:CGSizeMake(width, MAXFLOAT)
                                        options:NSStringDrawingUsesLineFragmentOrigin | NSStringDrawingUsesFontLeading
                                     attributes:attribute
                                        context:nil].size;
        return size.height + .5;
    }
}

@end

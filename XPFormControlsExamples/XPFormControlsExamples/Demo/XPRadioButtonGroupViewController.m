//
//  XPRadioButtonGroupViewController.m
//  XPFormControlsExamples
//
//  Created by xiaopin on 16/1/21.
//  Copyright © 2016年 pinguo. All rights reserved.
//

#import "XPRadioButtonGroupViewController.h"

@interface XPRadioButtonGroupViewController ()

@property (nonatomic,strong) XPRadioButtonGroup *group1;
@property (nonatomic,strong) XPRadioButtonGroup *group2;

@end

@implementation XPRadioButtonGroupViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.edgesForExtendedLayout = UIRectEdgeNone;
    
    NSMutableArray *dataItems = [NSMutableArray arrayWithObjects:@"1,男",@"2,女",@"3,女女女",@"4,女女女女",@"5,女女女女女", nil];
    
    CGFloat x,y;
    
    self.group1 = [[XPRadioButtonGroup alloc] initWithFrame:CGRectMake(50, 50, 275, 55)];
    self.group1.backgroundColor = [UIColor yellowColor];
    self.group1.imageSize = 20;
    self.group1.textColor = [UIColor orangeColor];
    self.group1.textFont = [UIFont systemFontOfSize:15];
    self.group1.checkImage = [UIImage imageNamed:@"xpf_rb_1_1"];
    self.group1.uncheckImage = [UIImage imageNamed:@"xpf_rb_1_0"];
    [self.view addSubview:self.group1];
    
    self.group1.items = dataItems;
    
    y = self.group1.frame.origin.y + self.group1.frame.size.height + 50;
    self.group2 = [[XPRadioButtonGroup alloc] initWithFrame:CGRectMake(50, y, 275, 60)];
    self.group2.backgroundColor = [UIColor yellowColor];
    self.group2.imageSize = 25;
    self.group2.textColor = [UIColor orangeColor];
    self.group2.textFont = [UIFont systemFontOfSize:18];
    self.group2.checkImage = [UIImage imageNamed:@"xpf_rb_1_1"];
    self.group2.uncheckImage = [UIImage imageNamed:@"xpf_rb_1_0"];
    self.group2.checkAction = ^(NSInteger index){
        NSLog(@"selectedIndx:%ld",(long)index);
    };
    [self.view addSubview:self.group2];
    
    self.group2.items = dataItems;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)showValue:(id)sender {
    
    NSLog(@"group1:%ld,%@,%@",self.group1.selectedIndex,self.group1.selectedValue,self.group1.selectedText);
    
        NSLog(@"group2:%ld,%@,%@",self.group2.selectedIndex,self.group2.selectedValue,self.group2.selectedText);
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

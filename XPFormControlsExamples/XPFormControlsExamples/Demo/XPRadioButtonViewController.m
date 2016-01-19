//
//  XPRadioButtonViewController.m
//  XPFormControlsExamples
//
//  Created by xiaopin on 16/1/19.
//  Copyright © 2016年 pinguo. All rights reserved.
//

#import "XPRadioButtonViewController.h"

@interface XPRadioButtonViewController ()
@property (nonatomic,strong) XPRadioButton *radio1;
@property (nonatomic,strong) XPRadioButton *radio2;
@property (nonatomic,strong) XPRadioButton *radio3;
@property (nonatomic,strong) XPRadioButton *radio4;
@property (nonatomic,strong) XPRadioButton *radio5;
@property (nonatomic,strong) XPRadioButton *radio6;
@property (nonatomic,strong) XPRadioButton *radio7;
@property (nonatomic,strong) XPRadioButton *radio8;
@property (nonatomic,strong) XPRadioButton *radio9;
@property (nonatomic,strong) XPRadioButton *radio10;

@end

@implementation XPRadioButtonViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.edgesForExtendedLayout = UIRectEdgeNone;
    
    CGFloat x,y;
    //    self.view.backgroundColor = [UIColor orangeColor];
    
    //1.XPRadioButton XPRadioStyleNoText
    self.radio1 = [[XPRadioButton alloc] initWithFrame:CGRectMake(50, 50, 30, 30)
                                         radioStyle:XPRadioStyleNoText];
    self.radio1.checkedBlock = ^(BOOL isChecked){
        if(isChecked){
            NSLog(@"radio1 Checked");
        }else{
            NSLog(@"radio1 unChecked");
        }
    };
    [self.view addSubview:self.radio1];
    
    x = self.radio1.frame.origin.x + self.radio1.frame.size.width + 10;
    y = self.radio1.frame.origin.y;
    self.radio2 = [[XPRadioButton alloc] initWithFrame:CGRectMake(x, y, 25, 25)
                                         radioStyle:XPRadioStyleNoText];
    [self.view addSubview:self.radio2];
    
    x = self.radio2.frame.origin.x + self.radio2.frame.size.width + 10;
    y = self.radio2.frame.origin.y;
    self.radio3 = [[XPRadioButton alloc] initWithFrame:CGRectMake(x, y, 20, 20)
                                         radioStyle:XPRadioStyleNoText];
    [self.view addSubview:self.radio3];
    
    x = self.radio3.frame.origin.x + self.radio3.frame.size.width + 10;
    y = self.radio3.frame.origin.y;
    self.radio4 = [[XPRadioButton alloc] initWithFrame:CGRectMake(x, y, 15, 15)
                                         radioStyle:XPRadioStyleNoText];
    [self.view addSubview:self.radio4];
    
    //2.XPRadioButton XPRadioStyleImageText
    x = self.radio1.frame.origin.x;
    y = self.radio4.frame.origin.y+self.radio4.frame.size.height + 30;
    self.radio5 = [[XPRadioButton alloc] initWithFrame:CGRectMake(x, y, 120, 30)
                                         radioStyle:XPRadioStyleImageText];
    self.radio5.imageSize = 30;
    self.radio5.text = @"record pwd";
    self.radio5.textColor = [UIColor redColor];
    self.radio5.textFont = [UIFont systemFontOfSize:16];
    [self.view addSubview:self.radio5];
    
    x = self.radio1.frame.origin.x;
    y = self.radio5.frame.origin.y+self.radio5.frame.size.height + 10;
    self.radio6 = [[XPRadioButton alloc] initWithFrame:CGRectMake(x, y, 120, 20)
                                         radioStyle:XPRadioStyleImageText];
    self.radio6.imageSize = 20;
    self.radio6.text = @"record pwd";
    self.radio6.textColor = [UIColor redColor];
    self.radio6.textFont = [UIFont systemFontOfSize:14];
    [self.view addSubview:self.radio6];
    
    x = self.radio1.frame.origin.x;
    y = self.radio6.frame.origin.y+self.radio6.frame.size.height + 10;
    self.radio7 = [[XPRadioButton alloc] initWithFrame:CGRectMake(x, y, 80, 20)
                                         radioStyle:XPRadioStyleImageText];
    self.radio7.imageSize = 15;
    self.radio7.text = @"Agree";
    self.radio7.textColor = [UIColor redColor];
    self.radio7.textFont = [UIFont systemFontOfSize:12];
    [self.view addSubview:self.radio7];
    
    //3.XPRadioButton XPRadioStyleCustom
    
    x = self.radio1.frame.origin.x;
    y = self.radio7.frame.origin.y+self.radio7.frame.size.height + 30;
    self.radio8 = [[XPRadioButton alloc] initWithFrame:CGRectMake(x, y, 120, 20)
                                         radioStyle:XPRadioStyleCustom];
    self.radio8.imageSize = 30;
    self.radio8.text = @"记住密码";
    self.radio8.textColor = [UIColor greenColor];
    self.radio8.textFont = [UIFont systemFontOfSize:12];
    self.radio8.checkedImage = [UIImage imageNamed:@"xpf_rb_2_1"];
    self.radio8.uncheckedImage = [UIImage imageNamed:@"xpf_rb_2_0"];
    [self.view addSubview:self.radio8];
    
    x = self.radio1.frame.origin.x;
    y = self.radio8.frame.origin.y+self.radio8.frame.size.height + 10;
    self.radio9 = [[XPRadioButton alloc] initWithFrame:CGRectMake(x, y, 100, 20)
                                         radioStyle:XPRadioStyleCustom];
    self.radio9.imageSize = 20;
    self.radio9.text = @"记住密码";
    self.radio9.textColor = [UIColor greenColor];
    self.radio9.textFont = [UIFont systemFontOfSize:14];
    self.radio9.checkedImage = [UIImage imageNamed:@"xpf_rb_2_1"];
    self.radio9.uncheckedImage = [UIImage imageNamed:@"xpf_rb_2_0"];
    [self.view addSubview:self.radio9];
    
    x = self.radio1.frame.origin.x;
    y = self.radio9.frame.origin.y+self.radio9.frame.size.height + 10;
    self.radio10 = [[XPRadioButton alloc] initWithFrame:CGRectMake(x, y, 200, 20)
                                          radioStyle:XPRadioStyleCustom];
    self.radio10.imageSize = 15;
    self.radio10.text = @"已经阅读并同意协议";
    self.radio10.textColor = [UIColor greenColor];
    self.radio10.textFont = [UIFont systemFontOfSize:12];
    self.radio10.checkedImage = [UIImage imageNamed:@"xpf_rb_2_1"];
    self.radio10.uncheckedImage = [UIImage imageNamed:@"xpf_rb_2_0"];
    [self.view addSubview:self.radio10];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)radioAction:(id)sender {
    NSLog(@"*****************************");
    if(self.radio1.checked)
    {
        NSLog(@"radio1选中了！");
    }
    
    if(self.radio2.checked)
    {
        NSLog(@"radio2选中了！");
    }
    
    if(self.radio3.checked)
    {
        NSLog(@"radio3选中了！");
    }
    
    if(self.radio4.checked)
    {
        NSLog(@"radio4选中了！");
    }
    
    if(self.radio5.checked)
    {
        NSLog(@"radio5选中了！");
    }
    
    if(self.radio6.checked)
    {
        NSLog(@"radio6选中了！");
    }
    
    if(self.radio7.checked)
    {
        NSLog(@"radio7选中了！");
    }
    
    if(self.radio8.checked)
    {
        NSLog(@"radio8选中了！");
    }
    
    if(self.radio9.checked)
    {
        NSLog(@"radio9选中了！");
    }
    
    if(self.radio10.checked)
    {
        NSLog(@"radio10选中了！");
    }
    
}

@end

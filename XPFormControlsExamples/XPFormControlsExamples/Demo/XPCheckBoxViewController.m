//
//  XPCheckBoxViewController.m
//  XPFormControlsExamples
//
//  Created by xiaopin on 16/1/16.
//  Copyright © 2016年 pinguo. All rights reserved.
//

#import "XPCheckBoxViewController.h"

@interface XPCheckBoxViewController ()

@property (nonatomic,strong) XPCheckBox *checkbox1;
@property (nonatomic,strong) XPCheckBox *checkbox2;
@property (nonatomic,strong) XPCheckBox *checkbox3;
@property (nonatomic,strong) XPCheckBox *checkbox4;
@property (nonatomic,strong) XPCheckBox *checkbox5;
@property (nonatomic,strong) XPCheckBox *checkbox6;
@property (nonatomic,strong) XPCheckBox *checkbox7;
@property (nonatomic,strong) XPCheckBox *checkbox8;
@property (nonatomic,strong) XPCheckBox *checkbox9;
@property (nonatomic,strong) XPCheckBox *checkbox10;

@end

@implementation XPCheckBoxViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.edgesForExtendedLayout = UIRectEdgeNone;
    
    CGFloat x,y;
//    self.view.backgroundColor = [UIColor orangeColor];
    
    //1.XPCheckBox XPCheckBoxStyleNoText
    self.checkbox1 = [[XPCheckBox alloc] initWithFrame:CGRectMake(50, 50, 30, 30)
                                         checkBoxStyle:XPCheckBoxStyleNoText];
    self.checkbox1.checkedBlock = ^(id responseObj,BOOL isChecked){
        if(isChecked){
            NSLog(@"chebox1 Checked");
        }else{
            NSLog(@"chebox1 unChecked");
        }
    };
    [self.view addSubview:self.checkbox1];
    
    x = self.checkbox1.frame.origin.x + self.checkbox1.frame.size.width + 10;
    y = self.checkbox1.frame.origin.y;
    self.checkbox2 = [[XPCheckBox alloc] initWithFrame:CGRectMake(x, y, 25, 25)
                                         checkBoxStyle:XPCheckBoxStyleNoText];
    [self.view addSubview:self.checkbox2];
    
    x = self.checkbox2.frame.origin.x + self.checkbox2.frame.size.width + 10;
    y = self.checkbox2.frame.origin.y;
    self.checkbox3 = [[XPCheckBox alloc] initWithFrame:CGRectMake(x, y, 20, 20)
                                         checkBoxStyle:XPCheckBoxStyleNoText];
    [self.view addSubview:self.checkbox3];
    
    x = self.checkbox3.frame.origin.x + self.checkbox3.frame.size.width + 10;
    y = self.checkbox3.frame.origin.y;
    self.checkbox4 = [[XPCheckBox alloc] initWithFrame:CGRectMake(x, y, 15, 15)
                                         checkBoxStyle:XPCheckBoxStyleNoText];
    [self.view addSubview:self.checkbox4];
    
    //2.XPCheckBox XPCheckBoxStyleImageText
    x = self.checkbox1.frame.origin.x;
    y = self.checkbox4.frame.origin.y+self.checkbox4.frame.size.height + 30;
    self.checkbox5 = [[XPCheckBox alloc] initWithFrame:CGRectMake(x, y, 120, 30)
                                         checkBoxStyle:XPCheckBoxStyleImageText];
    self.checkbox5.imageSize = 30;
    self.checkbox5.text = @"record pwd";
    self.checkbox5.textColor = [UIColor redColor];
    self.checkbox5.textFont = [UIFont systemFontOfSize:16];
    [self.view addSubview:self.checkbox5];
    
    x = self.checkbox1.frame.origin.x;
    y = self.checkbox5.frame.origin.y+self.checkbox5.frame.size.height + 10;
    self.checkbox6 = [[XPCheckBox alloc] initWithFrame:CGRectMake(x, y, 120, 20)
                                         checkBoxStyle:XPCheckBoxStyleImageText];
    self.checkbox6.imageSize = 20;
    self.checkbox6.text = @"record pwd";
    self.checkbox6.textColor = [UIColor redColor];
    self.checkbox6.textFont = [UIFont systemFontOfSize:14];
    [self.view addSubview:self.checkbox6];
    
    x = self.checkbox1.frame.origin.x;
    y = self.checkbox6.frame.origin.y+self.checkbox6.frame.size.height + 10;
    self.checkbox7 = [[XPCheckBox alloc] initWithFrame:CGRectMake(x, y, 80, 20)
                                         checkBoxStyle:XPCheckBoxStyleImageText];
    self.checkbox7.imageSize = 15;
    self.checkbox7.text = @"Agree";
    self.checkbox7.textColor = [UIColor redColor];
    self.checkbox7.textFont = [UIFont systemFontOfSize:12];
    [self.view addSubview:self.checkbox7];
    
    //3.XPCheckBox XPCheckBoxStyleCustom
    
    x = self.checkbox1.frame.origin.x;
    y = self.checkbox7.frame.origin.y+self.checkbox7.frame.size.height + 30;
    self.checkbox8 = [[XPCheckBox alloc] initWithFrame:CGRectMake(x, y, 120, 20)
                                         checkBoxStyle:XPCheckBoxStyleCustom];
    self.checkbox8.imageSize = 30;
    self.checkbox8.text = @"记住密码";
    self.checkbox8.textColor = [UIColor greenColor];
    self.checkbox8.textFont = [UIFont systemFontOfSize:12];
    self.checkbox8.checkedImage = [UIImage imageNamed:@"xpf_cb_2_1"];
    self.checkbox8.uncheckedImage = [UIImage imageNamed:@"xpf_cb_2_0"];
    [self.view addSubview:self.checkbox8];
    
    x = self.checkbox1.frame.origin.x;
    y = self.checkbox8.frame.origin.y+self.checkbox8.frame.size.height + 10;
    self.checkbox9 = [[XPCheckBox alloc] initWithFrame:CGRectMake(x, y, 100, 20)
                                         checkBoxStyle:XPCheckBoxStyleCustom];
    self.checkbox9.imageSize = 20;
    self.checkbox9.text = @"记住密码";
    self.checkbox9.textColor = [UIColor greenColor];
    self.checkbox9.textFont = [UIFont systemFontOfSize:14];
    self.checkbox9.checkedImage = [UIImage imageNamed:@"xpf_cb_2_1"];
    self.checkbox9.uncheckedImage = [UIImage imageNamed:@"xpf_cb_2_0"];
    [self.view addSubview:self.checkbox9];
    
    x = self.checkbox1.frame.origin.x;
    y = self.checkbox9.frame.origin.y+self.checkbox9.frame.size.height + 10;
    self.checkbox10 = [[XPCheckBox alloc] initWithFrame:CGRectMake(x, y, 200, 20)
                                          checkBoxStyle:XPCheckBoxStyleCustom];
    self.checkbox10.imageSize = 15;
    self.checkbox10.text = @"已经阅读并同意协议";
    self.checkbox10.textColor = [UIColor greenColor];
    self.checkbox10.textFont = [UIFont systemFontOfSize:12];
    self.checkbox10.checkedImage = [UIImage imageNamed:@"xpf_cb_2_1"];
    self.checkbox10.uncheckedImage = [UIImage imageNamed:@"xpf_cb_2_0"];
    [self.view addSubview:self.checkbox10];
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

- (IBAction)checkAction:(id)sender {
    NSLog(@"*****************************");
    if(self.checkbox1.checked)
    {
        NSLog(@"checkBox1选中了！");
    }
    
    if(self.checkbox2.checked)
    {
        NSLog(@"checkBox2选中了！");
    }
    
    if(self.checkbox3.checked)
    {
        NSLog(@"checkBox3选中了！");
    }
    
    if(self.checkbox4.checked)
    {
        NSLog(@"checkBox4选中了！");
    }
    
    if(self.checkbox5.checked)
    {
        NSLog(@"checkBox5选中了！");
    }
    
    if(self.checkbox6.checked)
    {
        NSLog(@"checkBox6选中了！");
    }
    
    if(self.checkbox7.checked)
    {
        NSLog(@"checkBox7选中了！");
    }
    
    if(self.checkbox8.checked)
    {
        NSLog(@"checkBox8选中了！");
    }
    
    if(self.checkbox9.checked)
    {
        NSLog(@"checkBox9选中了！");
    }
    
    if(self.checkbox10.checked)
    {
        NSLog(@"checkBox10选中了！");
    }
    
}

@end

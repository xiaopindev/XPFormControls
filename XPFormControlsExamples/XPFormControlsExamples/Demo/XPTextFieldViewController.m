//
//  XPTextFieldViewController.m
//  XPFormControlsExamples
//
//  Created by xiaopin on 16/1/17.
//  Copyright © 2016年 pinguo. All rights reserved.
//

#import "XPTextFieldViewController.h"

@interface XPTextFieldViewController ()

@property (nonatomic,strong) XPTextField *textField1;
@property (nonatomic,strong) XPTextField *textField2;

@property (nonatomic,strong) XPTextField *textField3;
@property (nonatomic,strong) XPTextField *textField4;

@property (nonatomic,strong) XPTextField *textField5;
@property (nonatomic,strong) XPTextField *textField6;
@property (nonatomic,strong) XPTextField *textField7;

@end

@implementation XPTextFieldViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    CGFloat y;
    self.edgesForExtendedLayout = UIRectEdgeNone;
    
    //1.XPTextFieldStyleDefault
    self.textField1 = [[XPTextField alloc] initWithFrame:CGRectMake(50, 5, 200, 30) tfStyle:XPTextFieldStyleDefault];
    [self.view addSubview:self.textField1];
    
    //2.XPTextFieldStyleDefault red border
    y = self.textField1.frame.origin.y + self.textField1.frame.size.height + 10;
    self.textField2 = [[XPTextField alloc] initWithFrame:CGRectMake(50, y, 200, 30) tfStyle:XPTextFieldStyleDefault];
    self.textField2.borderColor = [UIColor redColor];
    self.textField2.text = @"test text info";
    self.textField2.placeHolder = @"text placeHolder";
    self.textField2.textColor = [UIColor greenColor];
    self.textField2.textFont = [UIFont systemFontOfSize:15];
    [self.view addSubview:self.textField2];
    
    //3.XPTextFieldStyleCustom1
    y = self.textField2.frame.origin.y + self.textField2.frame.size.height + 10;
    self.textField3 = [[XPTextField alloc] initWithFrame:CGRectMake(50, y, 220, 30) tfStyle:XPTextFieldStyleCustom1];
    self.textField3.borderColor = [UIColor redColor];
    self.textField3.text = @"test text info";
    self.textField3.placeHolder = @"text placeHolder";
    self.textField3.textColor = [UIColor grayColor];
    self.textField3.textFont = [UIFont systemFontOfSize:15];
    
    self.textField3.leftImage = [UIImage imageNamed:@"icon_phone"];
    self.textField3.bottomLineColor = [UIColor grayColor];
    self.textField3.bottomLineWidth = 1;
    
    [self.view addSubview:self.textField3];
    
    y = self.textField3.frame.origin.y + self.textField3.frame.size.height + 10;
    self.textField4 = [[XPTextField alloc] initWithFrame:CGRectMake(50, y, 220, 30) tfStyle:XPTextFieldStyleCustom1];
    self.textField4.borderColor = [UIColor redColor];
    self.textField4.placeHolder = @"password";
    self.textField4.textColor = [UIColor grayColor];
    self.textField4.textFont = [UIFont systemFontOfSize:15];
    self.textField4.secureTextEntry = YES;
    
    self.textField4.leftImage = [UIImage imageNamed:@"icon_pwd"];
    self.textField4.bottomLineColor = [UIColor grayColor];
    self.textField4.bottomLineWidth = 1;
    
    [self.view addSubview:self.textField4];
    
    y = self.textField4.frame.origin.y + self.textField4.frame.size.height + 10;
    self.textField5 = [[XPTextField alloc] initWithFrame:CGRectMake(50, y, 220, 30) tfStyle:XPTextFieldStyleCustom1];
    self.textField5.borderColor = [UIColor redColor];
    self.textField5.placeHolder = @"password";
    self.textField5.textColor = [UIColor grayColor];
    self.textField5.textFont = [UIFont systemFontOfSize:15];
    
    self.textField5.leftImage = [UIImage imageNamed:@"icon_pwd"];
    self.textField5.bottomLineColor = [UIColor grayColor];
    self.textField5.bottomLineWidth = 1;
    self.textField5.hasIcon = NO;
    
    [self.view addSubview:self.textField5];
    
    y = self.textField5.frame.origin.y + self.textField5.frame.size.height + 10;
    self.textField6 = [[XPTextField alloc] initWithFrame:CGRectMake(50, y, 250, 40) tfStyle:XPTextFieldStyleCustom1];
    self.textField6.borderColor = [UIColor redColor];
    self.textField6.placeHolder = @"test text";
    self.textField6.textColor = [UIColor grayColor];
    self.textField6.textFont = [UIFont systemFontOfSize:20];
    
    self.textField6.leftImage = [UIImage imageNamed:@"icon_pwd"];
    self.textField6.bottomLineColor = [UIColor grayColor];
    self.textField6.bottomLineWidth = 1;
    
    [self.view addSubview:self.textField6];
    
    y = self.textField6.frame.origin.y + self.textField6.frame.size.height + 10;
    self.textField7 = [[XPTextField alloc] initWithFrame:CGRectMake(50, y, 250, 50) tfStyle:XPTextFieldStyleCustom1];
    self.textField7.borderColor = [UIColor redColor];
    self.textField7.placeHolder = @"test text";
    self.textField7.textColor = [UIColor grayColor];
    self.textField7.textFont = [UIFont systemFontOfSize:25];
    
    self.textField7.leftImage = [UIImage imageNamed:@"icon_pwd"];
    self.textField7.bottomLineColor = [UIColor grayColor];
    self.textField7.bottomLineWidth = 1;
    
    [self.view addSubview:self.textField7];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)showValues:(id)sender {
    
    NSLog(@"text1:%@",self.textField1.text);
    NSLog(@"text2:%@",self.textField2.text);
    NSLog(@"text3:%@",self.textField3.text);
    NSLog(@"text4:%@",self.textField4.text);
    NSLog(@"text5:%@",self.textField5.text);
    NSLog(@"text6:%@",self.textField6.text);
    NSLog(@"text7:%@",self.textField7.text);
    
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

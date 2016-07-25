//
//  ViewController.m
//  YYTopAlertView
//
//  Created by mac on 16/7/25.
//  Copyright © 2016年 Jack YY. All rights reserved.
//

#import "ViewController.h"
#import "YYTopAlertView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}
- (IBAction)YYShow:(UIButton *)sender
{
    YYTopAlertView * alert = [YYTopAlertView creartXib];
    [alert setYYGetTag:^(int tags)
    {
        UIAlertView * alertV = [[UIAlertView alloc]initWithTitle:nil message:[NSString stringWithFormat:@"选中了第%d个按钮",tags] delegate:self cancelButtonTitle:@"取消" otherButtonTitles:@"确认", nil];
        [alertV show];
    }];
    [alert show];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

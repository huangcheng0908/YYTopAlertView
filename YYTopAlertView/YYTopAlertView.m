//
//  YYTopAlertView.m
//  YYTopAlertView
//
//  Created by mac on 16/7/25.
//  Copyright © 2016年 Jack YY. All rights reserved.
//

#import "YYTopAlertView.h"

@implementation YYTopAlertView

-(void)awakeFromNib
{
    self.frame = [[UIScreen mainScreen] bounds];
    self.backgroundColor = [[UIColor whiteColor]colorWithAlphaComponent:0.45];
    self.YYAlertView.frame = CGRectMake(0, -173.0, self.frame.size.width, 173.0);
}

+(instancetype)creartXib
{
    return [[[NSBundle mainBundle]loadNibNamed:@"YYTopAlertView" owner:nil options:nil]lastObject];
}

-(void)show
{
    [[UIApplication sharedApplication].keyWindow.rootViewController.view addSubview:self];
    
    [UIView animateWithDuration:0.3 delay:0 options:UIViewAnimationOptionCurveEaseOut animations:^{
        
        self.YYAlertView.frame = CGRectMake(0, 0, self.frame.size.width, 173.0);
        
    } completion:nil];
}

-(void)close
{
    [UIView animateWithDuration:0.3 delay:0 options:UIViewAnimationOptionCurveEaseOut animations:^{
        self.YYAlertView.frame = CGRectMake(0, -173.0, self.frame.size.width, 173.0);
    } completion:^(BOOL finished) {
        if (finished)
        {
            [self removeFromSuperview];
            
        }
    }];
}
- (IBAction)YYCancel:(UIButton *)sender
{
    [self close];
}

- (IBAction)YYBut:(UIButton *)sender
{
    self.YYGetTag((int)sender.tag);
    [self close];
}

@end

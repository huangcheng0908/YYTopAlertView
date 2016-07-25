//
//  YYTopAlertView.h
//  YYTopAlertView
//
//  Created by mac on 16/7/25.
//  Copyright © 2016年 Jack YY. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface YYTopAlertView : UIView

@property (strong,nonatomic)void (^YYGetTag)(int Buttag);
@property (weak, nonatomic) IBOutlet UIView *YYAlertView;
@property (weak, nonatomic) IBOutlet UIView *YYBgView;

/**
 *  创建视图
 *
 *  @return <#return value description#>
 */
+(instancetype)creartXib;

/**
 *  显示视图
 */
-(void)show;

/**
 *  关闭视图
 */
-(void)close;

@end

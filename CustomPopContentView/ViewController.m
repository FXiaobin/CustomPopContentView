//
//  ViewController.m
//  CustomPopContentView
//
//  Created by fanxiaobin on 2017/4/6.
//  Copyright © 2017年 fanxiaobin. All rights reserved.
//

#import "ViewController.h"
#import "PopContentView.h"
#import "KLCPopup.h"

@interface ViewController ()

@property (nonatomic,strong) KLCPopup *pop ;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    
    UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(100, 100, 100, 30)];
    btn.backgroundColor = [UIColor orangeColor];
    [btn addTarget:self action:@selector(show:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    
}

- (void)show:(UIButton *)sender{
    
    UIView *contentView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 300, 400)];
    contentView.backgroundColor = [UIColor purpleColor];
    
    UIButton *closeBtn = [[UIButton alloc] initWithFrame:CGRectMake(CGRectGetWidth(contentView.frame)-20, 0, 20, 20)];
    closeBtn.backgroundColor = [UIColor redColor];
    [closeBtn addTarget:self action:@selector(closeBtnAction:) forControlEvents:UIControlEventTouchUpInside];
    [contentView addSubview:closeBtn];
    
    
    ///弹出视图
    KLCPopup *pop = [PopContentView showPopContentView:contentView];
    _pop = pop;
}

- (void)closeBtnAction:(UIButton *)sender{
    
    [_pop dismiss:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end

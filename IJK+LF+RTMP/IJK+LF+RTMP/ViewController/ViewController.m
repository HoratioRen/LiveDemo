//
//  ViewController.m
//  IJK+LF+RTMP
//
//  Created by BK.RSS on 2016/11/1.
//  Copyright © 2016年 REN. All rights reserved.
//

#import "ViewController.h"

#import "LFLiveViewController.h"


#import "IJKViewController.h"
@interface ViewController ()

@property (strong, nonatomic)  UIButton *LFButton;

@property (strong, nonatomic)  UIButton *IJKButton;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.view.backgroundColor = [UIColor cyanColor];
    _LFButton = [UIButton buttonWithType:UIButtonTypeCustom];
    _LFButton.frame = CGRectMake(30, 150, SCREEN_WIDTH -60, 100);
    _LFButton.backgroundColor = [UIColor orangeColor];
    [_LFButton addTarget:self action:@selector(LFAction:) forControlEvents:UIControlEventTouchUpInside];
    [_LFButton setTitle:@"LFLiveKit推流" forState:UIControlStateNormal];
    _LFButton.titleLabel.font = [UIFont systemFontOfSize:30];
    [self.view addSubview:_LFButton];
    
    
    _IJKButton = [UIButton buttonWithType:UIButtonTypeCustom];
    _IJKButton.frame = CGRectMake(30, 150+130, SCREEN_WIDTH -60, 100);
    _IJKButton.backgroundColor = [UIColor orangeColor];
    [_IJKButton addTarget:self action:@selector(ijkAction:) forControlEvents:UIControlEventTouchUpInside];
    [_IJKButton setTitle:@"IJKPlayer拉流" forState:UIControlStateNormal];
    _IJKButton.titleLabel.font = [UIFont systemFontOfSize:30];
    [self.view addSubview:_IJKButton];

    
}
- (void)LFAction:(UIButton *)sender {
    
    LFLiveViewController * LFVC = [[LFLiveViewController alloc]init];
    [self.navigationController pushViewController:LFVC animated:YES];
}


- (void)ijkAction:(UIButton *)sender {
    
    IJKViewController * ijkVC = [[IJKViewController alloc]init];
    [self.navigationController pushViewController:ijkVC animated:YES];
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end

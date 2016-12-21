//
//  ViewController.m
//  NSTimerTest
//
//  Created by ios on 16/11/12.
//  Copyright © 2016年 ios. All rights reserved.
//

#import "ViewController.h"
#import "timerView.h"

@interface ViewController ()
@property (nonatomic, strong) timerView *timeview;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    timerView *view = [[timerView alloc]initWithFrame:CGRectMake(20.f, 100.f, 100.f, 100.f)];
    view.backgroundColor = [UIColor redColor];
    self.timeview = view;
    [self.view addSubview:view];
    
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    
//    [self.timeview stopTimer];
    [self.timeview removeFromSuperview];
    self.timeview = nil;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end

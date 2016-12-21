//
//  timerView.m
//  NSTimerTest
//
//  Created by ios on 16/11/12.
//  Copyright © 2016年 ios. All rights reserved.
//

#import "timerView.h"

@implementation timerView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/
- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.timer = [NSTimer scheduledTimerWithTimeInterval:1.f target:self selector:@selector(testit) userInfo:nil repeats:YES];
    }
    return self;
}

- (void)testit
{
    NSLog(@"test it");
}

- (void)stopTimer
{
    [self.timer invalidate];
    self.timer = nil;
}
- (void)removeFromSuperview
{
    [self stopTimer];
    [super removeFromSuperview];
}
- (void)dealloc
{
    NSLog(@"dealloc");
    [super dealloc];
}
@end

//
//  timerView.h
//  NSTimerTest
//
//  Created by ios on 16/11/12.
//  Copyright © 2016年 ios. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface timerView : UIView
@property (nonatomic, assign) NSTimer *timer;

- (void)stopTimer;

@end

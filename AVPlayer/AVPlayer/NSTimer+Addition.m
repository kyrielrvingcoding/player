//
//  NSTimer+Addition.m
//  AVPlayer
//
//  Created by 诸超杰 on 16/4/18.
//  Copyright © 2016年 诸超杰. All rights reserved.
//

#import "NSTimer+Addition.h"

@implementation NSTimer (Addition)
-(void)pauseTimer
{
    if (![self isValid]) {
        return;
    }
    [self setFireDate:[NSDate distantFuture]];
}

-(void)resumeTimer
{
    if (![self isValid]) {
        return;
    }
    [self setFireDate:[NSDate date]];
}

- (void)resumeTimerAfterTimeInterval:(NSTimeInterval)interval
{
    if (![self isValid]) {
        return;
    }
    [self setFireDate:[NSDate dateWithTimeIntervalSinceNow:interval]];
}

@end

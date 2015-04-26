//
//  FeedbackLoop.m
//  FeedbackLoop
//
//  Created by Shane Rogers on 4/25/15.
//  Copyright (c) 2015 FBL. All rights reserved.
//

#import "FeedbackLoop.h"

#import "FBLChatViewController.h"

@interface FeedbackLoop ()
@property (nonatomic, strong) UIWindow *feedbackLoopWindow;;
@end

@implementation FeedbackLoop

+ (FeedbackLoop*)sharedInstance {
    static dispatch_once_t once;
    static FeedbackLoop *rwuicontrols;
    dispatch_once(&once, ^ {
        rwuicontrols = [[self alloc] init];
    });
    return rwuicontrols;
}

+ (void)presentNewWindow {
    UIWindow *feedbackWindow = [[UIWindow alloc]initWithFrame:[[UIScreen mainScreen] bounds]];
    [feedbackWindow setBackgroundColor:[UIColor blueColor]];
    feedbackWindow.windowLevel = UIWindowLevelAlert;
    [[self sharedInstance] setFeedbackLoopWindow:feedbackWindow];
    [[[self sharedInstance] feedbackLoopWindow] makeKeyAndVisible];
}

@end

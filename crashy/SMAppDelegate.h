//
//  SMAppDelegate.h
//  crashy
//
//  Created by Cesare Rocchi on 2/17/13.
//  Copyright (c) 2013 Cesare Rocchi. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SMWebEngine.h"
#import <HockeySDK/HockeySDK.h>

@class SMViewController;

@interface SMAppDelegate : UIResponder <UIApplicationDelegate,BITHockeyManagerDelegate, BITUpdateManagerDelegate, BITCrashManagerDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic) SMViewController *viewController;
@property (strong, nonatomic) SMWebEngine *engine;

@end

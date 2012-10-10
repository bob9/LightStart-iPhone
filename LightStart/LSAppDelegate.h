//
//  LSAppDelegate.h
//  LightStart
//
//  Created by Melissa Pringle on 10/10/12.
//  Copyright (c) 2012 Melissa Pringle. All rights reserved.
//

#import <UIKit/UIKit.h>

@class LSViewController;

@interface LSAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) LSViewController *viewController;

@end

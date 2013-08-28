//
//  AppDelegate.h
//  NavigationAndTabbar
//
//  Created by Muhamad Rifki on 8/27/13.
//  Copyright (c) 2013 Rifkilabs. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UINavigationController *homeNav;
@property (strong, nonatomic) UINavigationController *favNav;
@property (strong, nonatomic) UINavigationController *searchNav;
@property (strong, nonatomic) UINavigationController *settingNav;
@property (strong, nonatomic) UINavigationController *aboutNav;
@property (strong, nonatomic) UINavigationController *otherNav;
@property (strong, nonatomic) UITabBarController *mainTabBar;

@property (strong, nonatomic) IBOutlet UIWindow *window;

@end
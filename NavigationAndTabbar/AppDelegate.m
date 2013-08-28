//
//  AppDelegate.m
//  NavigationAndTabbar
//
//  Created by Muhamad Rifki on 8/27/13.
//  Copyright (c) 2013 Rifkilabs. All rights reserved.
//

#import "AppDelegate.h"
#import "HomeViewController.h"
#import "FavoriteViewController.h"
#import "SearchViewController.h"
#import "SettingViewController.h"
#import "AboutViewController.h"
#import "OtherViewController.h"

@implementation AppDelegate

@synthesize homeNav, favNav, searchNav, settingNav, aboutNav, otherNav, mainTabBar;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    //self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    
    HomeViewController *homeView = [[HomeViewController alloc] init];
    [homeView setTitle:@"HOME"];
    
    FavoriteViewController *favView = [[FavoriteViewController alloc] init];
    [favView setTitle:@"FAVORITE"];
    
    SearchViewController *searchView = [[SearchViewController alloc] init];
    [searchView setTitle:@"SEARCH"];
    
    SettingViewController *settingView = [[SettingViewController alloc] init];
    [settingView setTitle:@"SETTING"];
    
    AboutViewController *aboutView = [[AboutViewController alloc] init];
    [aboutView setTitle:@"ABOUT US"];
    
    AboutViewController *otherView = [[AboutViewController alloc] init];
    [otherView setTitle:@"Other"];
    
    homeNav = [[UINavigationController alloc] initWithRootViewController: homeView];
    favNav = [[UINavigationController alloc] initWithRootViewController: favView];
    searchNav = [[UINavigationController alloc] initWithRootViewController: searchView];
    settingNav = [[UINavigationController alloc] initWithRootViewController: settingView];
    aboutNav = [[UINavigationController alloc] initWithRootViewController: aboutView];
    otherNav = [[UINavigationController alloc] initWithRootViewController: otherView];
    
    NSArray *menus = [NSArray arrayWithObjects:homeNav,favNav,searchNav,settingNav,aboutNav,otherNav, nil];
    
    mainTabBar = [[UITabBarController alloc] init];
    [mainTabBar setViewControllers:menus];
    

    
    UITabBarItem *item0Home = [mainTabBar.tabBar.items objectAtIndex:0];
    [item0Home setTitle:@"Home"];
    [item0Home setImage:[UIImage imageNamed:@"home.png"]];
    
    UITabBarItem *item1Fav = [mainTabBar.tabBar.items objectAtIndex:1];
    [item1Fav setTitle:@"Favorite"];
    [item1Fav setImage:[UIImage imageNamed:@"fav.png"]];
    
    UITabBarItem *item2Search = [mainTabBar.tabBar.items objectAtIndex:2];
    [item2Search setTitle:@"Search"];
    [item2Search setImage:[UIImage imageNamed:@"search.png"]];
    
    UITabBarItem *item3setting = [mainTabBar.tabBar.items objectAtIndex:3];
    [item3setting setTitle:@"Setting"];
    [item3setting setImage:[UIImage imageNamed:@"setting.png"]];
    
    UITabBarItem *item4About = [mainTabBar.tabBar.items objectAtIndex:4];
    [item4About setTitle:@"About Us"];
    [item4About setImage:[UIImage imageNamed:@"about.png"]];

    self.window.rootViewController = mainTabBar;
    
   /* UITabBarItem *item5Other = [mainTabBar.tabBar.items ];
    [item5Other setTitle:@"Other"];
    [item5Other setImage:[UIImage imageNamed:@"about.png"]];*/

    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end

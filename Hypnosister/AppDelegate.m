//
//  AppDelegate.m
//  Hypnosister
//
//  Created by Ryan D'souza on 1/30/15.
//  Copyright (c) 2015 Ryan D'souza. All rights reserved.
//

#import "AppDelegate.h"
#import "BNRHypnosisView.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    
    /*CGRect frame1 = self.window.bounds; //CGRectMake(160, 240, 100, 150);
    
    BNRHypnosisView *view1 = [[BNRHypnosisView alloc] initWithFrame:frame1];
    //view1.backgroundColor = UIColor.redColor;
    [self.window addSubview:view1]; */
    
    //CGRects for frames
    CGRect screenRect = self.window.bounds;
    CGRect bigRect = screenRect;
    bigRect.size.width *= 2;
    //bigRect.size.height *= 2;
    
    //Screensized scrollview
    UIScrollView *scrollView = [[UIScrollView alloc] initWithFrame:screenRect];
    [self.window addSubview:scrollView];
    
    //Forces scroll so you focus on only one view at a time
    scrollView.pagingEnabled = true; //Can also be 'YES'
    
    //Normal Hypnosis view and add it to the scroll view
    BNRHypnosisView *normalBNR = [[BNRHypnosisView alloc] initWithFrame:screenRect];
    [scrollView addSubview:normalBNR];
    
    //Tell it how big its child is
    scrollView.contentSize = bigRect.size;
    
    //Off center everything
    screenRect.origin.x += screenRect.size.width;
    BNRHypnosisView *offCenterBNR = [[BNRHypnosisView alloc] initWithFrame:screenRect];
    [scrollView addSubview:offCenterBNR];
    
    
    self.window.backgroundColor = UIColor.whiteColor;
    self.window.makeKeyAndVisible;
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end

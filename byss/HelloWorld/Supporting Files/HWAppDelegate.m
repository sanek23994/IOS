//
//  HWAppDelegate.m
//  HelloWorld
//
//  Created by Kirill Bystrov on 08.06.13.
//  Copyright (c) 2013 Kirill Bystrov. All rights reserved.
//

#import "HWAppDelegate.h"

#import "HWMainVC.h"

@implementation HWAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
	HWMainVC *vc = [HWMainVC new];
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];

	self.window.rootViewController = [[HWMainVC alloc] initWithNibName:@"HWMainVC" bundle:nil];
    self.navCntrl = [[UINavigationController alloc] initWithRootViewController:vc];
	
	[self.window makeKeyAndVisible];
	return YES;
}

@end

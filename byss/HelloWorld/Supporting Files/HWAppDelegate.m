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
	self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];

	self.window.rootViewController = [[HWMainVC alloc] initWithNibName:@"HWMainVC" bundle:nil];
	
	[self.window makeKeyAndVisible];
	return YES;
}

@end

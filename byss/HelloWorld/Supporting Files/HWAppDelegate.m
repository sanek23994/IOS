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
	HWMainVC *vc = [[HWMainVC alloc] initWithNibName:@"HWMainVC" bundle:nil];
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];

	self.window.rootViewController = vc;
    
	[self.window makeKeyAndVisible];
	return YES;
}

@end

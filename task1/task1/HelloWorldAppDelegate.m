//
//  HelloWorldAppDelegate.m
//  task1
//
//  Created by Alexander Ovchinnikov on 6/8/13.
//  Copyright (c) 2013 Alexander Ovchinnikov. All rights reserved.
//

#import "HelloWorldAppDelegate.h"
#import "MyViewController.h"

@implementation HelloWorldAppDelegate

@synthesize m_Window;
@synthesize m_MyViewController;

- (void)applicationDidFinishLaunching:(UIApplication *)application
{
    MyViewController *_ViewController = [[MyViewController alloc] initWithNibName:@"HelloWorld" bundle: [NSBundle mainBundle]];
    self.m_MyViewController = _ViewController;
    [_ViewController release];
    [[UIApplication sharedApplication] setStatusBarStyle:UIStatusBarStyleBlackOpaque];
    UIView *controllersView = [m_MyViewController view];
    [m_Window addSubview:controllersView];
    [m_Window makeKeyAndVisible];
}

- (void)dealloc
{
    [m_MyViewController release];
    [m_Window release];
    [super dealloc];
}

@end

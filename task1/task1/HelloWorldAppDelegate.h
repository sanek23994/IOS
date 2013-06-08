//
//  HelloWorldAppDelegate.h
//  task1
//
//  Created by Alexander Ovchinnikov on 6/8/13.
//  Copyright (c) 2013 Alexander Ovchinnikov. All rights reserved.
//

#import <UIKit/UIKit.h>

@class MyViewController;

@interface HelloWorldAppDelegate : NSObject <UIApplicationDelegate>
{
    IBOutlet UIWindow   *m_Window;
    MyViewController    *m_MyViewController;
}

@property (nonatomic, retain) UIWindow          *m_Window;
@property (nonatomic, retain) MyViewController  *m_MyViewController;

@end

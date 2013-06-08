//
//  MyViewController.m
//  task1
//
//  Created by Alexander Ovchinnikov on 6/7/13.
//  Copyright (c) 2013 Alexander Ovchinnikov. All rights reserved.
//

#import "MyViewController.h"

@implementation MyViewController

@synthesize m_TextField;
@synthesize m_Label;
@synthesize m_Str;

- (void)viewDidLoad
{
    m_TextField.clearButtonMode = UITextFieldViewModeWhileEditing;
    m_Label.text  = m_TextField.placeholder;
}

- (void)updateString
{
    self.m_Str = m_TextField.text;
    m_Label.text = self.m_Str;
}

- (BOOL)textFieldShouldReturn:(UITextField *)theTextField
{
    if (theTextField == m_TextField)
    {
        [m_TextField resignFirstResponder];
    }
    [self updateString];
    return YES;
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    [m_TextField resignFirstResponder];
    m_TextField.text = self.m_Str;
    [super touchesBegan:touches withEvent:event];
    
}

- (void)dealloc
{
    [m_TextField release];
    [m_Label release];
    [super dealloc];
}
@end

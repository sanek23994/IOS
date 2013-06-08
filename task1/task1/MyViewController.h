//
//  MyViewController.h
//  task1
//
//  Created by Alexander Ovchinnikov on 6/7/13.
//  Copyright (c) 2013 Alexander Ovchinnikov. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MyViewController : UIViewController <UITextFieldDelegate>
{
    IBOutlet UITextField    *m_TextField;
    IBOutlet UILabel        *m_Label;
    NSString                *str;
}

@property (nonatomic, retain) UITextField   *m_TextField;
@property (nonatomic, retain) UILabel       *m_Label;
@property (nonatomic, retain) NSString      *m_Str;

-(void)updateString;

@end


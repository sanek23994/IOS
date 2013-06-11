//
//  HWMainVC.m
//  HelloWorld
//
//  Created by Kirill Bystrov on 08.06.13.
//  Copyright (c) 2013 Kirill Bystrov. All rights reserved.
//

#import "HWMainVC.h"

@interface HWMainVC () {
	NSString *_string;
}

@property (weak, nonatomic) IBOutlet UITextField *textField;
@property (weak, nonatomic) IBOutlet UILabel *label;
@property (weak, nonatomic) IBOutlet UINavigationItem *navigation;


@end

@implementation HWMainVC

- (void)updateString {
	_string = self.textField.text;
	self.label.text = _string;
    self.navigation.title = _string;
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
	if (textField == self.textField) {
		[textField resignFirstResponder];
		[self updateString];
	}
	
	return YES;
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
	[self.textField resignFirstResponder];
	self.textField.text = _string;
	
	[super touchesBegan:touches withEvent:event];
}

@end

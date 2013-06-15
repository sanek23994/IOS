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

- (IBAction)buttonEvent:(id)sender;
@end

@implementation HWMainVC

- (void)updateString {
	_string = self.textField.text;
	self.label.text = _string;
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

- (IBAction)buttonEvent:(id)sender {
    NSString *mainStr = self.textField.text;
    unsigned len = mainStr.length;
    unichar *tmpChars = (unichar *)malloc(len * sizeof(unichar));
    [mainStr getCharacters:tmpChars range:NSMakeRange(0, len)];
    unichar tmp;
    for (unsigned i = 0; i < len / 2; i++) {
        tmp = tmpChars[i];
        tmpChars[i] = tmpChars[len - i - 1];
        tmpChars[len - i - 1] = tmp;
    }
    _string = [[NSString alloc] initWithCharacters:tmpChars length:len];
    self.label.text = _string;
    self.textField.text = _string;
    free(tmpChars);
}
@end

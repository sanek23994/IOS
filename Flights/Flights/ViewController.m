//
//  ViewController.m
//  Flights
//
//  Created by Alexander Ovchinnikov on 6/16/13.
//  Copyright (c) 2013 Alexander Ovchinnikov. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (retain, nonatomic) IBOutlet UITableView *myTable;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	self.myTable.transform = CGAffineTransformMakeRotation(-M_PI_2);
    self.myTable.frame = CGRectMake(0, 0, self.myTable.frame.size.width, self.myTable.frame.size.height);
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)dealloc {
    [_myTable release];
    [_myTable release];
    [super dealloc];
}
@end

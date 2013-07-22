//
//  ViewController.m
//  My Scroller
//
//  Created by Wenzel Jay Tubalde on 7/19/13.
//  Copyright (c) 2013 Openkit. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [_scroll setScrollEnabled:YES];
    [_scroll setContentSize:CGSizeMake(320, 920)];
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

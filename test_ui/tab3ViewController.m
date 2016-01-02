//
//  tab3ViewController.m
//  test_ui
//
//  Created by USER on 2015/12/31.
//  Copyright © 2015年 USER. All rights reserved.
//

#import "tab3ViewController.h"
#import "AppDelegate.h"

@implementation tab3ViewController
{
    AppDelegate *appDelegate;
}


- (void)viewDidAppear:(BOOL)animated
{
    appDelegate = [[UIApplication sharedApplication] delegate];
    _tab3Label1.text = [NSString stringWithFormat:@"[%ld]", appDelegate.point];
}

- (IBAction)tab3Button1:(id)sender {
    appDelegate = [[UIApplication sharedApplication] delegate];
    appDelegate.point++;
    _tab3Label1.text = [NSString stringWithFormat:@"[%ld]", appDelegate.point];
    
}

@end

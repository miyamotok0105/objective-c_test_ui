//
//  tab1ViewController.m
//  test_ui
//
//  Created by USER on 2015/12/31.
//  Copyright © 2015年 USER. All rights reserved.
//

#import "tab1ViewController.h"
#import "AppDelegate.h"

@implementation tab1ViewController
{
    AppDelegate *appDelegate;
}

- (void)viewDidAppear:(BOOL)animated
{
    appDelegate = [[UIApplication sharedApplication] delegate];
    _tabLabel1.text = [NSString stringWithFormat:@"[%ld]", appDelegate.point];
}

- (IBAction)tab1ViewControllerDidPush:(id)sender {
    appDelegate = [[UIApplication sharedApplication] delegate];
    appDelegate.point++;
    _tabLabel1.text = [NSString stringWithFormat:@"[%ld]", appDelegate.point];
}
@end

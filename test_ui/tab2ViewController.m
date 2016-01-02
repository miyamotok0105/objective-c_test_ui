//
//  tab2ViewController.m
//  test_ui
//
//  Created by USER on 2015/12/31.
//  Copyright © 2015年 USER. All rights reserved.
//

#import "tab2ViewController.h"
#import "AppDelegate.h"

@implementation tab2ViewController
{
    AppDelegate *appDelegate;
}

- (void)viewDidAppear:(BOOL)animated
{
    appDelegate = [[UIApplication sharedApplication] delegate];
    _tabLabel2.text = [NSString stringWithFormat:@"[%ld]", appDelegate.point];
}

- (IBAction)tab2ViewControllerDidPush:(id)sender {
    appDelegate = [[UIApplication sharedApplication] delegate];
    appDelegate.point++;
    _tabLabel2.text = [NSString stringWithFormat:@"[%ld]", appDelegate.point];
}


@end

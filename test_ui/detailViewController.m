//
//  detailViewController.m
//  test_ui
//
//  Created by USER on 2016/01/01.
//  Copyright © 2016年 USER. All rights reserved.
//

#import "detailViewController.h"

@implementation detailViewController

@synthesize cellValue;

- (void)viewDidLoad
{
    [super viewDidLoad];
//    [self configureView];
    
    self.label1.text = cellValue;
    if([cellValue isEqualToString:@"テレキャスター"])
    {
        self.label2.text = @"テレキャスターの説明";
    }
    else if([cellValue isEqualToString: @"ムスタング"])
    {
        self.label2.text = @"ムスタングの説明";
    }
}


@end

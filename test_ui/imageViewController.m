//
//  imageViewController.m
//  test_ui
//
//  Created by USER on 2016/01/02.
//  Copyright © 2016年 USER. All rights reserved.
//

#import "imageViewController.h"

@implementation imageViewController


- (void)viewDidLoad
{
    self.view.backgroundColor = [UIColor blackColor];
    
}



- (IBAction)buttonShowDidPush:(id)sender {
    _imageView1.image = [UIImage imageNamed:@"ball2.png"];
    self.view.backgroundColor = [UIColor whiteColor];
    
}

- (IBAction)buttonHideDidPush:(id)sender {
    _imageView1.image = [UIImage imageNamed:@""];
    self.view.backgroundColor = [UIColor lightGrayColor];
    
}
@end

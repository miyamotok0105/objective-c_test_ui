//
//  imageViewController.h
//  test_ui
//
//  Created by USER on 2016/01/02.
//  Copyright © 2016年 USER. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface imageViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIImageView *imageView1;
- (IBAction)buttonShowDidPush:(id)sender;

- (IBAction)buttonHideDidPush:(id)sender;
@end

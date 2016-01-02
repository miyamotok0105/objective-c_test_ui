//
//  navigationViewController.h
//  test_ui
//
//  Created by USER on 2016/01/01.
//  Copyright © 2016年 USER. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface navigationViewController : UIViewController
- (IBAction)changeBackGroundColor:(id)sender;
@property (weak, nonatomic) IBOutlet UITextView *textView1;
- (IBAction)buttonDidPush:(id)sender;
- (IBAction)editBtnDidPush:(id)sender;
- (IBAction)endBtnDidPush:(id)sender;

@end

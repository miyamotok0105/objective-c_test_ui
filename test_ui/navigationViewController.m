//
//  navigationViewController.m
//  test_ui
//
//  Created by USER on 2016/01/01.
//  Copyright © 2016年 USER. All rights reserved.
//

#import "navigationViewController.h"

@implementation navigationViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor purpleColor];
    
    _textView1.editable = NO;
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyBoardDidShow:) name:UIKeyboardDidShowNotification object:nil];
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyBoardHideShow:) name:UIKeyboardDidHideNotification object:nil];
    
}


- (void)keyBoardDidShow:(NSNotification *)notification{
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:0.3];
    
    //get keyboardsize
    NSDictionary* info = [notification userInfo];
    NSValue* value = [info objectForKey:UIKeyboardFrameBeginUserInfoKey];
    CGSize keyboardSize = [value CGRectValue].size;
    
    CGRect textViewFrame = _textView1.frame;
    textViewFrame.size.height = self.view.frame.size.height - keyboardSize.height;
    _textView1.frame = textViewFrame;
    [UIView commitAnimations];
    
}

- (void)keyBoardHideShow:(NSNotification *)notification{
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:1.0];
    
    //get keyboardsize
    NSDictionary* info = [notification userInfo];
    NSValue* value = [info objectForKey:UIKeyboardFrameBeginUserInfoKey];
    CGSize keyboardSize = [value CGRectValue].size;
    
    CGRect textViewFrame = _textView1.frame;
    textViewFrame.size.height = self.view.frame.size.height + keyboardSize.height;
    _textView1.frame = textViewFrame;
    [UIView commitAnimations];
    
}

- (IBAction)changeBackGroundColor:(id)sender {
    UISegmentedControl *segment = sender;
    switch (segment.selectedSegmentIndex) {
        case 0:
            self.view.backgroundColor = [UIColor whiteColor];
            break;
            
        case 1:
            self.view.backgroundColor = [UIColor blueColor];
            break;
            
        case 2:
            self.view.backgroundColor = [UIColor greenColor];
            break;
            
        default:
            break;
    }
}
- (IBAction)buttonDidPush:(id)sender {
    _textView1.editable = NO;
    for (int i = 0;i<100;i++)
    {
        _textView1.text = [_textView1.text stringByAppendingString:@"iphoneアプリのテスト中"];
    }
}

- (IBAction)editBtnDidPush:(id)sender {
    _textView1.editable = YES;
    [_textView1 becomeFirstResponder];
}

- (IBAction)endBtnDidPush:(id)sender {
    _textView1.editable = NO;
    [_textView1 resignFirstResponder];
}
@end

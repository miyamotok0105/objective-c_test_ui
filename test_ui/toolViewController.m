//
//  toolViewController.m
//  test_ui
//
//  Created by USER on 2016/01/01.
//  Copyright © 2016年 USER. All rights reserved.
//

#import "toolViewController.h"

@implementation toolViewController

- (IBAction)itemDidPush:(id)sender {
    // コントローラを生成
    UIAlertController * ac =
    [UIAlertController alertControllerWithTitle:@"Title"
                                        message:@"Message"
                                 preferredStyle:UIAlertControllerStyleAlert];
    
    // Cancel用のアクションを生成
    UIAlertAction * cancelAction =
    [UIAlertAction actionWithTitle:@"Cancel"
                             style:UIAlertActionStyleCancel
                           handler:^(UIAlertAction * action) {
                               // ボタンタップ時の処理
                               NSLog(@"Cancel button tapped.");
                           }];
    
    // OK用のアクションを生成
    UIAlertAction * okAction =
    [UIAlertAction actionWithTitle:@"OK"
                             style:UIAlertActionStyleDefault
                           handler:^(UIAlertAction * action) {
                               // ボタンタップ時の処理
                               NSLog(@"OK button tapped.");
                           }];
    
    // コントローラにアクションを追加
    [ac addAction:cancelAction];
    [ac addAction:okAction];
    
    // アラート表示処理
    [self presentViewController:ac animated:YES completion:nil];
}
@end

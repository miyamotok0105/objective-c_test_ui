//
//  ViewController.m
//  test_ui
//
//  Created by USER on 2015/12/31.
//  Copyright © 2015年 USER. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UILabel *label1;
@property (weak, nonatomic) IBOutlet UITextField *textFiled1;
@property (weak, nonatomic) IBOutlet UILabel *label2;
@property (weak, nonatomic) IBOutlet UISwitch *switch1;
@property (weak, nonatomic) IBOutlet UISlider *slider1;
@property (weak, nonatomic) IBOutlet UIDatePicker *datePiker1;

- (IBAction)textFiled1:(id)sender;
- (IBAction)button1:(id)sender;
- (IBAction)button2:(id)sender;
- (IBAction)button3:(id)sender;
- (IBAction)switch1:(id)sender;
- (IBAction)slider:(id)sender;
- (IBAction)datePikerDidChanged:(id)sender;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    _label1.text = @"ラベルテスト１";
    
//    [_textFiled1 becomeFirstResponder];
    
    
    
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



- (IBAction)button1:(id)sender {
    _label1.text = @"done";
    
}

- (IBAction)textFiled1:(id)sender {
    _label1.text = _textFiled1.text;
}

- (IBAction)button2:(id)sender {
    
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

- (IBAction)button3:(id)sender {
    
    // コントローラを生成
    UIAlertController * ac =
    [UIAlertController alertControllerWithTitle:@"Title"
                                        message:@"Message"
                                 preferredStyle:UIAlertControllerStyleActionSheet];
    
    // Cancel用のアクションを生成
    UIAlertAction * cancelAction =
    [UIAlertAction actionWithTitle:@"Cancel"
                             style:UIAlertActionStyleCancel
                           handler:^(UIAlertAction * action) {
                               // ボタンタップ時の処理
                               NSLog(@"Cancel button tapped.");
                           }];
    
    // Destructive用のアクションを生成
    UIAlertAction * destructiveAction =
    [UIAlertAction actionWithTitle:@"Destructive"
                             style:UIAlertActionStyleDestructive
                           handler:^(UIAlertAction * action) {
                               // ボタンタップ時の処理
                               NSLog(@"Destructive button tapped.");
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
    [ac addAction:destructiveAction];
    [ac addAction:okAction];
    
    // アクションシート表示処理
    [self presentViewController:ac animated:YES completion:nil];
    
}

- (IBAction)switch1:(id)sender {
    if(_switch1.on == YES){
        _label2.text = @"スイッチon";
    }
    else
    {
        _label2.text = @"スイッチoff";
    }
}

- (IBAction)slider:(id)sender {
    float a = _slider1.value;
    _label2.text = [NSString stringWithFormat:@"slider = %f,%f", _slider1.value,a];
}

- (IBAction)datePikerDidChanged:(id)sender {
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat:@"yyyy/MMM/dd HH:mm"];
    NSString *ds = [formatter stringFromDate:_datePiker1.date];
    
    
    // コントローラを生成
    UIAlertController * ac =
    [UIAlertController alertControllerWithTitle:ds
                                        message:@"Message"
                                 preferredStyle:UIAlertControllerStyleAlert];
    
    
    // OK用のアクションを生成
    UIAlertAction * okAction =
    [UIAlertAction actionWithTitle:@"OK"
                             style:UIAlertActionStyleDefault
                           handler:^(UIAlertAction * action) {
                               // ボタンタップ時の処理
                               NSLog(@"OK button tapped.");
                           }];
    
    // コントローラにアクションを追加
    [ac addAction:okAction];
    
    // アラート表示処理
    [self presentViewController:ac animated:YES completion:nil];
}

- (IBAction)showNextView:(id)sender {
}


@end

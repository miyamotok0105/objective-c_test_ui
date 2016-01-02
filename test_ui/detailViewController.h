//
//  detailViewController.h
//  test_ui
//
//  Created by USER on 2016/01/01.
//  Copyright © 2016年 USER. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface detailViewController : UIViewController
{
    NSString *CellValue;
}

@property (weak, nonatomic) IBOutlet UILabel *label1;
@property (weak, nonatomic) IBOutlet UILabel *label2;
@property (nonatomic, retain) NSString *cellValue;

@end

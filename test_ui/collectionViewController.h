//
//  collectionViewController.h
//  test_ui
//
//  Created by USER on 2016/01/02.
//  Copyright © 2016年 USER. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface collectionViewController : UIViewController<UICollectionViewDataSource, UICollectionViewDelegate>
{
    NSString *selectedName;
}

@property (weak, nonatomic) IBOutlet UICollectionView *CollectionView;

@end

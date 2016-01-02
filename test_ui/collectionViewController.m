//
//  collectionViewController.m
//  test_ui
//
//  Created by USER on 2016/01/02.
//  Copyright © 2016年 USER. All rights reserved.
//

#import "collectionViewController.h"

@implementation collectionViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
    
}

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
    return 1;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return 18;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    UICollectionViewCell *cell;
    cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"cell" forIndexPath:indexPath];
    
    UIImageView *imageView = (UIImageView *)[cell viewWithTag:1];
    NSString *imgName = [NSString stringWithFormat:@"ball2.png"];
    UIImage *image = [UIImage imageNamed:imgName];
    imageView.image = image;
    
    UILabel *label = (UILabel *)[cell viewWithTag:2];
    label.text = [NSString stringWithFormat:@"No.%d",(int)(indexPath.row+1)];
    
    return cell;
}


@end

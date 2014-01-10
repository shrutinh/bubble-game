//
//  ViewController.m
//  SampleGridView
//
//  Created by TAVANT on 1/9/14.
//  Copyright (c) 2014 TAVANT. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize sampleCollection;

static NSString * CellIdentifier = @"CellIdentifier";

-(void)viewDidLoad
{
    [super viewDidLoad];
    [self.sampleCollection registerClass:[UICollectionViewCell class]
            forCellWithReuseIdentifier:CellIdentifier];
}
-(NSInteger)collectionView:(UICollectionView *)collectionView
    numberOfItemsInSection:(NSInteger)section
{
    return 8;
}

-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView
                 cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    UICollectionViewCell *cell = [collectionView
                                  dequeueReusableCellWithReuseIdentifier:CellIdentifier
                                  forIndexPath:indexPath];
    
    cell.backgroundColor = [UIColor orangeColor];
    return cell;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

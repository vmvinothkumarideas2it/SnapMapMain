//
//  SecondViewController.m
//  SnapMapMain
//
//  Created by Vinoth Kumar on 01/12/14.
//  Copyright (c) 2014 Vinoth Kumar. All rights reserved.
//

#import "BrowseDealsViewController.h"
#import "DealsListCollectionViewCell.h"

@interface BrowseDealsViewController ()<UICollectionViewDataSource,UICollectionViewDelegate,UICollectionViewDelegateFlowLayout>
@property (weak, nonatomic) IBOutlet UICollectionView *dealsListCollectionView;
@property (strong, nonatomic) NSArray *dealsListArray;

@end

@implementation BrowseDealsViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.dealsListArray = @[@"FOOD",@"HEALTH",@"DRINKS",@"FOODALPHA",@"HEALTHBEATAAAASNOWRED",@"DRINKS",@"FOOD",@"HEALTH",@"DRINKS",@"FOOD",@"HEALTH",@"DRINKSGAMEREADTOMORROW",@"FOOD",@"HEALTH",@"DRINKS",@"FOOD",@"HEALTH",@"DRINKS"];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma CollectionView of Deals START
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return [self.dealsListArray count];
}

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
    return 1;
}

// The cell that is returned must be retrieved from a call to -dequeueReusableCellWithReuseIdentifier:forIndexPath:
- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *identifier = @"dealsList";
    DealsListCollectionViewCell *cell =
    [collectionView dequeueReusableCellWithReuseIdentifier:identifier
                                              forIndexPath:indexPath];
    cell.dealsButton.text = self.dealsListArray[indexPath.row];
    return cell;
}

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath
{
    return self.dealsListCollectionView.frame.size;
}
#pragma CollectionView of Deals END

@end

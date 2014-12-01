//
//  SecondViewController.m
//  SnapMapMain
//
//  Created by Vinoth Kumar on 01/12/14.
//  Copyright (c) 2014 Vinoth Kumar. All rights reserved.
//

#import "BrowseDealsViewController.h"
#import "DealsListCollectionViewCell.h"

@interface BrowseDealsViewController ()<UICollectionViewDataSource,UICollectionViewDelegate,UICollectionViewDelegateFlowLayout,UITableViewDataSource,UITableViewDelegate>
@property (weak, nonatomic) IBOutlet UICollectionView *dealsListCollectionView;
@property (weak, nonatomic) IBOutlet UITableView *dealsDetailTableView;
@property (strong, nonatomic) NSArray *dealsCategoryArray;
@property (strong, nonatomic) NSArray *dealsDetailsArray;

@end

@implementation BrowseDealsViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.dealsCategoryArray = @[@"FOOD",@"HEALTH",@"DRINKS",@"FOOD",@"HEALTH",@"DRINKS",@"FOOD",@"HEALTH",@"DRINKS",@"FOOD",@"HEALTH",@"DRINKS",@"FOOD",@"HEALTH",@"DRINKS",@"FOOD",@"HEALTH",@"DRINKS"];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark CollectionView of Deals START
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return [self.dealsCategoryArray count];
}

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
    return 1;
}

// The cell that is returned must be retrieved from a call to -dequeueReusableCellWithReuseIdentifier:forIndexPath:
- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *identifier = @"dealsCategoryList";
    DealsListCollectionViewCell *cell =
    [collectionView dequeueReusableCellWithReuseIdentifier:identifier
                                              forIndexPath:indexPath];
    cell.dealsButton.text = self.dealsCategoryArray[indexPath.row];
    return cell;
}
#pragma mark CollectionView of Deals END


#pragma mark TableView of Selected Deals START
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 10;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"dealsDetailList" forIndexPath:indexPath];
    

    return cell;
}


#pragma mark TableView of Selected Deals END

@end

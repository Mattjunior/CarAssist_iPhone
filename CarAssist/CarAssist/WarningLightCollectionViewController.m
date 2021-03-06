//
//  WarningLightCollectionViewController.m
//  CarAssist
//
//  Created by 0witt on 30.11.12.
//  Copyright (c) 2012 Gruppe Fear. All rights reserved.
//

#import "WarningLightCollectionViewController.h"
#import "WarningLight.h"
#import "WarningLightViewController.h"
#import "WarningLightCollectionViewCell.h"

@interface WarningLightCollectionViewController () <UICollectionViewDataSource, UICollectionViewDelegate>

@end

@implementation WarningLightCollectionViewController

- (WarningLightCollectionViewController*)init
{
    self = [super init];
     
     if (self) {
         self.warningLightStockService = [[WarningLightStockService alloc] init];
     }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.title = @"Warnleuchten";
    [self.warningLightCollectionView registerClass:WarningLightCollectionViewCell.class forCellWithReuseIdentifier:@"WarningLightCollectionViewCell"];
}

- (NSInteger) collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return self.warningLightStockService.warningLights.count;
}

- (UICollectionViewCell*)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    WarningLight* currentWarningLight = [self.warningLightStockService.warningLights objectAtIndex:indexPath.row];
    
    WarningLightCollectionViewCell* cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"WarningLightCollectionViewCell" forIndexPath:indexPath];
    
    [cell setWarningLightImage: currentWarningLight.image];
    
    return cell;
}

-(void) collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
{
    WarningLight* currentWarningLight = [self.warningLightStockService.warningLights objectAtIndex:indexPath.row];
    WarningLightViewController* viewController = [[WarningLightViewController alloc] initWithWarningLight: currentWarningLight];
    
    [self.navigationController pushViewController:viewController animated:YES];
}

@end

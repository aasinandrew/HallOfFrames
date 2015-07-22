//
//  ViewController.m
//  HallOfFrames
//
//  Created by Andrew  Nguyen on 7/22/15.
//  Copyright (c) 2015 Andrew Nguyen. All rights reserved.
//

#import "ViewController.h"
#import "Picture.h"
#import "PictureCollectionViewCell.h"
#import "ModalViewController.h"

@interface ViewController () <ModalViewControllerDelegate>
@property NSArray *pictures;
@property (weak, nonatomic) IBOutlet UICollectionView *collectionView;

@end

@implementation ViewController
NSString * const collectionViewIdentifier = @"PictureCollectionViewCell";

-(void)modalViewController:(ModalViewController *)controller didSelectColorButton:(UIButton *)button {
    [self.collectionView reloadData];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setUpArray];
    NSLog(@"awef");
}

-(void) setUpArray {
    self.pictures = [NSArray arrayWithObjects:
                     [[Picture alloc]initWithColor:[UIColor blackColor] imageName:@"cat"],
                     [[Picture alloc]initWithColor:[UIColor blackColor] imageName:@"cat2"],
                     [[Picture alloc]initWithColor:[UIColor blackColor] imageName:@"cat3"],
                     [[Picture alloc]initWithColor:[UIColor blackColor] imageName:@"cat4"],
                     [[Picture alloc]initWithColor:[UIColor blackColor] imageName:@"cat5"],nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return self.pictures.count;
}

-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    PictureCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:collectionViewIdentifier forIndexPath:indexPath];

    Picture *p = [self.pictures objectAtIndex:indexPath.row];
    UIImage *image = [UIImage imageNamed:p.imageName];
    cell.cellImageView.image = image;
    cell.backgroundColor = p.color;
    return cell;
}

-(void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    //PictureCollectionViewCell *cell = [collectionView cellForItemAtIndexPath:indexPath];
    //NSLog(@"ain");
    
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    ModalViewController *vc = segue.destinationViewController;
    NSIndexPath *indexPath = [self.collectionView indexPathForCell:sender];
    vc.selectedPicture = [self.pictures objectAtIndex:indexPath.item];
    vc.delegate = self;
}

@end

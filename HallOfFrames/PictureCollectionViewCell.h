//
//  PictureCollectionViewCell.h
//  HallOfFrames
//
//  Created by Andrew  Nguyen on 7/22/15.
//  Copyright (c) 2015 Andrew Nguyen. All rights reserved.
//

#import <UIKit/UIKit.h>
@protocol PictureCollectionViewCellDelegate;

@interface PictureCollectionViewCell : UICollectionViewCell
@property (weak, nonatomic) IBOutlet UIImageView *cellImageView;
@property (weak, nonatomic) id <PictureCollectionViewCellDelegate> delegate;

@end

@protocol PictureCollectionViewCellDelegate <NSObject>
@optional

-(void)pictureCollectionViewCell:(PictureCollectionViewCell *)didTapCell;

@end
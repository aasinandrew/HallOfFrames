//
//  ModalViewController.h
//  HallOfFrames
//
//  Created by Andrew  Nguyen on 7/22/15.
//  Copyright (c) 2015 Andrew Nguyen. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Picture.h"

@protocol ModalViewControllerDelegate;
@interface ModalViewController : UIViewController
@property Picture *selectedPicture;
@property (weak, nonatomic) id <ModalViewControllerDelegate> delegate;
@end

@protocol ModalViewControllerDelegate <NSObject>

-(void)modalViewController:(ModalViewController *)controller didSelectColorButton:(UIButton *)button;

@end

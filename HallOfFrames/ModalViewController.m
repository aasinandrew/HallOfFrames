//
//  ModalViewController.m
//  HallOfFrames
//
//  Created by Andrew  Nguyen on 7/22/15.
//  Copyright (c) 2015 Andrew Nguyen. All rights reserved.
//

#import "ModalViewController.h"


@interface ModalViewController ()


@end

@implementation ModalViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //NSLog(self.selectedPicture.imageName);
    self.view.backgroundColor = [UIColor colorWithRed:0.5 green:0.5 blue:0.5 alpha:0.5];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
- (IBAction)onColorSelected:(UIButton *)sender {

    UIColor *selectedColor;
    switch (sender.tag) {
        case 0:
            selectedColor = [UIColor greenColor];
            self.selectedPicture.color = selectedColor;
            break;
        case 1:
            selectedColor = [UIColor blueColor];
            self.selectedPicture.color = selectedColor;
            break;
        case 2:
            selectedColor = [UIColor redColor];
            self.selectedPicture.color = selectedColor;
            break;
        case 3:
            [self dismissViewControllerAnimated:YES completion:nil];
            break;
        default:
            //selectedColor = [UIColor blackColor];
            break;
    }
    [self.delegate modalViewController:self didSelectColorButton:sender];

}



@end

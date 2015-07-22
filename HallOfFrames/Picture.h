//
//  Picture.h
//  HallOfFrames
//
//  Created by Andrew  Nguyen on 7/22/15.
//  Copyright (c) 2015 Andrew Nguyen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface Picture : NSObject
@property UIColor *color;
@property NSString *imageName;

-(instancetype)initWithColor:(UIColor *)color imageName:(NSString *)imageName;

@end

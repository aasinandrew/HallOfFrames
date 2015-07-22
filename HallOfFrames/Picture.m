//
//  Picture.m
//  HallOfFrames
//
//  Created by Andrew  Nguyen on 7/22/15.
//  Copyright (c) 2015 Andrew Nguyen. All rights reserved.
//

#import "Picture.h"

@implementation Picture

-(instancetype)initWithColor:(UIColor *)color imageName:(NSString *)imageName {
    if (self = [super init]) {
        _color = [color copy];
        _imageName = [imageName copy];
    }
    return self;
}

@end

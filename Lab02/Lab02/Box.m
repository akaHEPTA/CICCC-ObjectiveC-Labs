//
//  Box.m
//  Lab2
//
//  Created by Richard Cho on 2020-03-24.
//  Copyright © 2020 Richard Cho. All rights reserved.
//

#import "Box.h"

@implementation Box

// Initializer
- (instancetype) initWithHeight: (float) height andWidth: (float) width andLength: (float) length {
    self = [super init];
    if (self) {
        _height = height;
        _width = width;
        _length = length;
    }
    return self;
}

- (float) getVolume {
    return self.height * self.width * self.length;
}

- (int) doesThisCanContainOthers: (Box *) otherBox {
    return (int) ([self getVolume] / [otherBox getVolume]);
}

@end

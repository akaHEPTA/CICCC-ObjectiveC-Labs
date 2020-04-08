//
//  Dice.m
//  Threelow
//
//  Created by Richard Cho on 2020-04-07.
//  Copyright © 2020 Richard Cho. All rights reserved.
//

#import "Dice.h"

@implementation Dice

- (instancetype)init {
    self = [super init];
    if (self) {
        _isHeld = NO;
    }
    return self;
}

- (void)roll {
    if (_isHeld == NO) {
        _currentValue = arc4random_uniform(6) + 1;
    }
}

@end

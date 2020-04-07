//
//  SubtractionQuestion.m
//  Lab3
//
//  Created by Richard Cho on 2020-03-27.
//  Copyright © 2020 Richard Cho. All rights reserved.
//

#import "SubtractionQuestion.h"

@implementation SubtractionQuestion

- (instancetype)init {
    self = [super init];
    if (self) {
        [self generateQuestion];
    }
    return self;
}

- (void)generateQuestion {
    super.answer = super.leftValue - super.rightValue;
    super.question = [NSString stringWithFormat:@"%ld - %ld ?", super.leftValue, super.rightValue];
}

@end

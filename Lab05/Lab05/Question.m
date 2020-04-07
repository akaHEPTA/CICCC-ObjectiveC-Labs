//
//  AdditionQuestion.m
//  Lab3
//
//  Created by Richard Cho on 2020-03-25.
//  Copyright © 2020 Richard Cho. All rights reserved.
//

#import "Question.h"

@implementation Question

- (instancetype)init {
    if (self = [super init]) {
        _leftValue = arc4random_uniform(100);
        _rightValue = arc4random_uniform(100);
        _startTime = [NSDate date];
    }
    return self;
}

- (NSInteger)answer {
    _endTime = [NSDate date];
    return _answer;
}

- (NSTimeInterval)timeToAnswer {
    return [_endTime timeIntervalSinceDate:_startTime];
}

- (void)generateQuestion {
    // EMPTY - for override
}

@end

//
//  QuestionManager.m
//  Lab3
//
//  Created by Richard Cho on 2020-03-26.
//  Copyright © 2020 Richard Cho. All rights reserved.
//

#import "QuestionManager.h"
#import "Question.h"

@implementation QuestionManager

- (instancetype)init {
    self = [super init];
    if (self) {
        _questions = [NSMutableArray new];
    }
    return self;
}

- (NSString *)timeOutput {
    NSTimeInterval total = 0;
    
    for (Question *q in _questions) {
        total += [q timeToAnswer];
    }
    
    return [NSString stringWithFormat:@"total time: %ds, average time: %ds", (int) total, (int) (total / _questions.count) ];
}

@end

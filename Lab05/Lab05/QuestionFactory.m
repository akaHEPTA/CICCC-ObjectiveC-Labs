//
//  QuestionFactory.m
//  Lab3
//
//  Created by Richard Cho on 2020-03-27.
//  Copyright © 2020 Richard Cho. All rights reserved.
//

#import "QuestionFactory.h"

@implementation QuestionFactory

- (instancetype)init {
    self = [super init];
    if (self) {
         _questionSubclassNames = @[@"AdditionQuestion", @"SubtractionQuestion", @"MultiplicationQuestion", @"DivisionQuestion"];
    }
    return self;
}

- (Question *)generateRandomQuestion {
    return [[NSClassFromString(_questionSubclassNames[arc4random_uniform(4)]) alloc] init];
}

@end

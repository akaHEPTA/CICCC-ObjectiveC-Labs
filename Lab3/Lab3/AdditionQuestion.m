//
//  AdditionQuestion.m
//  Lab3
//
//  Created by Richard Cho on 2020-03-25.
//  Copyright © 2020 Richard Cho. All rights reserved.
//

#import "AdditionQuestion.h"

@implementation AdditionQuestion

- (instancetype)init {
    if (self = [super init]) {
        NSInteger a = arc4random_uniform(100), b = arc4random_uniform(100);
        _answer = a + b;
        _question = [NSString stringWithFormat:@"%ld + %ld ?", a, b];
    }
    return self;
}



@end

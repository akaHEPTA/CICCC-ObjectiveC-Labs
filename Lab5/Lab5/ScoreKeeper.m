//
//  ScoreKeeper.m
//  Lab3
//
//  Created by Richard Cho on 2020-03-25.
//  Copyright © 2020 Richard Cho. All rights reserved.
//

#import "ScoreKeeper.h"

@implementation ScoreKeeper

- (NSString *)printScore {
    NSInteger ratio = (_correct * 100 / (_correct + _wrong));
    return [NSString stringWithFormat:@"score: %ld right, %ld wrong ---- %ld", _correct, _wrong, ratio];
}

@end

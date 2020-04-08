//
//  GameController.m
//  Threelow
//
//  Created by Richard Cho on 2020-04-07.
//  Copyright © 2020 Richard Cho. All rights reserved.
//

#import "GameController.h"

@implementation GameController

- (instancetype)init {
    self = [super init];
    if (self) {
        _dices = [[NSMutableArray alloc] init];
        for (int i = 0; i < 5; i++) {
            [_dices addObject:[[Dice alloc] init]];
        }
    }
    return self;
}

- (void)rollDices {
    for (Dice *die in _dices) { [die roll]; }
}

- (void)holdDie:(NSInteger)number {
    _dices[number - 1].isHeld = YES;
}

- (void)resetDices {
    for (int i = 0; i < 5; i++) { _dices[i].isHeld = NO; }
}

- (void)printDices {
    NSString *result = @"";
    int score = 0;
    for (Dice *die in _dices) {
        if (die.isHeld == YES) {
            result = [result stringByAppendingString:@"\["];
            score += [die currentValue];
        }
        switch ([die currentValue]) {
            case 1: result = [result stringByAppendingString:@"⚀"]; break;
            case 2: result = [result stringByAppendingString:@"⚁"]; break;
            case 3: result = [result stringByAppendingString:@"⚂"]; break;
            case 4: result = [result stringByAppendingString:@"⚃"]; break;
            case 5: result = [result stringByAppendingString:@"⚄"]; break;
            case 6: result = [result stringByAppendingString:@"⚅"]; break;
            default: break;
        }
        if (die.isHeld == YES) { result = [result stringByAppendingString:@"]"]; }
        result = [result stringByAppendingString:@" "];
    }
    NSLog(@"%@", result);
    NSLog(@"Current Score: %d", score);
    NSLog(@"");
}

- (void)lastRoll {
    for (Dice *die in _dices) { die.isHeld = YES; }
}

- (BOOL)heldAll {
    for (Dice *die in _dices) { if (die.isHeld == NO) { return NO; } }
    return YES;
}

@end

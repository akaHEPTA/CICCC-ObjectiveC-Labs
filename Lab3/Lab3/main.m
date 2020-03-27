//
//  main.m
//  Lab3
//
//  Created by Richard Cho on 2020-03-25.
//  Copyright © 2020 Richard Cho. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AdditionQuestion.h"
#import "InputHandler.h"
#import "ScoreKeeper.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        BOOL isGamming = YES;
        ScoreKeeper *score = [ScoreKeeper new];
        
        while (isGamming) {
            AdditionQuestion *q = [AdditionQuestion new];
            
            NSLog(@"%@", q.question);
            NSString *userInput = [InputHandler getUserInput:10];
            
            if ([userInput isEqualToString:@"quit"]) {
                isGamming = NO;
                continue;
            }
            
            NSInteger userAnswer = [userInput intValue];
            
            if ([q answer] == userAnswer) {
                NSLog(@"Right!");
                score.correct++;
            } else {
                NSLog(@"Wrong!");
                score.wrong++;
            }
            
            NSLog(@"%@", [score printScore]);
        }
        
    }
    return 0;
}

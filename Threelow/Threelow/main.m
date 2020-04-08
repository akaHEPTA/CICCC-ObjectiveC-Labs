//
//  main.m
//  Threelow
//
//  Created by Richard Cho on 2020-04-07.
//  Copyright © 2020 Richard Cho. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dice.h"
#import "InputHandler.h"
#import "GameController.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        do {
            GameController *gameController = [[GameController alloc] init];
            int counter = 5;
            
            while (counter > 0) {
                NSLog(@"Number of rolls left: %d", counter);
                NSString *userInput = [InputHandler getUserInput:10 prompt:@"Type 'roll', 'hold' or 'reset'"];
                if ([userInput isEqualToString:@"roll"]) {
                    [gameController rollDices];
                    counter--;
                } else if ([userInput isEqualToString:@"hold"]) {
                    NSString *hold = [InputHandler getUserInput:5 prompt:@"Which die you want to hold?"];
                    [gameController holdDie:[hold integerValue]];
                } else if ([userInput isEqualToString:@"reset"]) {
                    [gameController resetDices];
                }
                if (counter == 0 || [gameController heldAll] == YES) {
                    counter = 0;
                    [gameController lastRoll];
                }
                [gameController printDices];
            }
        } while ([[InputHandler getUserInput:5 prompt:@"Type 'n' for start a new game"] isEqualToString:@"n"]);
    }
    return 0;
}



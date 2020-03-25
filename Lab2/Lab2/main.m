//
//  main.m
//  Lab2
//
//  Created by Richard Cho on 2020-03-24.
//  Copyright © 2020 Richard Cho. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Box.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        const float kHeight = 4.6f;
        const float kWidth = 3.7f;
        const float kLength = 2.8f;
        
        Box * box1 = [[Box alloc] initWithHeight: kHeight andWidth: kWidth andLength: kLength];
        NSLog(@"Manual calculation: %.2f", kHeight * kWidth * kLength);
        NSLog(@"Method calculation: %.2f", [box1 getVolume]);
        
        Box * box2 = [[Box alloc] initWithHeight: 9.1f andWidth: 7.3f andLength: 5.5f];
        NSLog(@"Box 1 can take box 2 for %d times", [box1 doesThisCanContainOthers: box2]);
        NSLog(@"Box 2 can take box 1 for %d times", [box2 doesThisCanContainOthers: box1]);
        
    }
    return 0;
}


// -------- CLASS ACTIVITY --------

/*
 .h (header file - public interface)
 .m (implementation file - your implementation)
 */
#import "DateCalculator.h"

int main2(int argc, const char * argv[]) {
    @autoreleasepool {
        // Default initializer
        // - DateCalculator *calc1 = [DateCalculator new];
        DateCalculator *calc = [[DateCalculator alloc] init];
        calc.myAge = 30.2;
        NSLog(@"%.1f", calc.myAge);
        //    [DateCalculator sayHelloWith:@"How are you?" andName:@"Derrick"];
        
        DateCalculator * calc2 = [[DateCalculator alloc] initWithMyAge: 60 AndName: @"Robert"];
        if ([calc2 canDatePersonWithAge:20]) {
            NSLog(@"Yes");
        } else {
            NSLog(@"No");
        }
        
        // Note: Senging a message to nil does not crash!
        // In Java lingo => "Calling a methodon a null object does not throw a NullPointerException!"
        DateCalculator *calc3 = nil;
        NSLog(@"%d", [calc3 canDatePersonWithAge:30]);
        NSString *str = nil;
        NSLog(@"%@", [str uppercaseString]);
    }
    return 0;
}

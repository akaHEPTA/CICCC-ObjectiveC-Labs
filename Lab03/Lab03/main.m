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
    
    
    /* -------- CLASS ACTIVITY --------
    
    // NSArray is immutable (cannot change)
    NSArray *names = @[@"Derrick", @"Leo", @"Sean"]; // array literal
    NSLog(@"names[1] = %@", names[1]);
    // names[1] = @"Leonardo";
    NSLog(@"names = %@, count = %ld", names, names.count);
    
    // NSMutableArray is mutable (append, remove, insert, replace)
    NSMutableArray *cities = [[NSMutableArray alloc] init]; // init empty mutable array
    [cities addObject:@"Vancouver"];
    [cities addObject:@"Toronto"];
    [cities addObject:@"Burnaby"];
    cities[2] = @"Calgary";
    [cities insertObject:@"Edmonton" atIndex:0];
    [cities removeLastObject];
    NSLog(@"cities = %@", cities);
    // NSMutableArray *mt = [names mutableCopy];
    
    NSMutableArray *randomNums = [NSMutableArray new];
    for (int i = 0; i < 10; i++) {
        [randomNums addObject:[[NSNumber alloc] initWithUnsignedInt:arc4random_uniform(100)]];
    }
    NSLog(@"randomNums = %@", randomNums);
    
    NSArray *sortedNums = [randomNums sortedArrayUsingComparator:^NSComparisonResult(NSNumber *obj1, NSNumber *obj2) {
        return [obj1 compare:obj2];
    }];
    NSLog(@"sortedNums = %@", sortedNums);
    
    // Dictionaries - key-value pairs
    NSDictionary *airports = @{@"yvr": @"Vancouver",
                               @"tpe": @"Taipei",
                               @"jfk": @"New York City",
                               @"gru": @"Sao Paulo",
                               @"icn": @"Incheon",
                               @"mxn": @"Benito Juarez",
                               @"fuk": @"Fukuoka"
    };
    NSLog(@"airports[@\"yvr\"] = %@", [airports objectForKey:@"yvr"]);
    for (NSString *code in airports) {
        NSLog(@"airports[%@] = %@", code, [airports objectForKey:code]);
    }
    // NSMutableDictionary *mutDict = [NSMutableDictionary new];
    
    //*/
    
    return 0;
}

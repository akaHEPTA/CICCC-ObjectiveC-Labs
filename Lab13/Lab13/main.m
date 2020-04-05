//
//  main.m
//  Lab13
//
//  Created by Richard Cho on 2020-04-04.
//  Copyright © 2020 Richard Cho. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSString+PigLatin.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // TEST
        char inputChars[255];
        fgets(inputChars, 255, stdin);
        NSString *input = [[NSString stringWithUTF8String: inputChars] stringByTrimmingCharactersInSet: [NSCharacterSet whitespaceAndNewlineCharacterSet]];
        NSLog(@"Piglatinized: %@", [input stringByPigLatinization]);
    }
    return 0;
}


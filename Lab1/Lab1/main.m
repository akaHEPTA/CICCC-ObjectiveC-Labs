//
//  main.m
//  Lab1
//
//  Created by Richard Cho on 2020-03-23.
//  Copyright © 2020 Richard Cho. All rights reserved.
//

#import <Foundation/Foundation.h>

NSString * getUserInput(int maxLength, NSString *prompt) {
    if (maxLength < 1) { maxLength = 255; }
    NSLog(@"%@ ", prompt);
    char inputChars[maxLength];
    char * result = fgets(inputChars, maxLength, stdin);
    if (result != NULL) {
        // turn cstring -> NSString
        // NSString.stringWithUTF8String(inputchars)
        //         .stringByTrimmingCharactersInSet(NSCharacterSet.whitespaceAndNewlineCharacterSet());
        return [[NSString stringWithUTF8String: inputChars] stringByTrimmingCharactersInSet: [NSCharacterSet whitespaceAndNewlineCharacterSet]];
    }
    return NULL;
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        while (YES) {
            NSString * strInput = getUserInput(255, @"\nEnter your String: ('q' to quit)");
            if ([strInput isEqualToString: @"q"]) { break; }
            while (YES) {
                NSString * option = getUserInput(10, @"\nChoose one of the following options:\n1. Uppercase\n2. Lowercase\n3. Numberize\n4. Canadianize\n5. Respond\n6. De-Space-It\n7. Word Count\n8. Remove punctuations\n9. Done\n");
                if ([option isEqualToString: @"9"]) {
                    break;
                } else if ([option isEqualToString: @"1"]) {
                    NSLog(@"%@", [strInput uppercaseString]);
                } else if ([option isEqualToString: @"2"]) {
                    NSLog(@"%@", [strInput lowercaseString]);
                } else if ([option isEqualToString: @"3"]) {
                    // check if strInput is number?
                    // NSNumberFormatter formatter = new NSNumberFormatter();
                    NSNumberFormatter * formatter = [[NSNumberFormatter alloc] init];
                    NSNumber * number = [formatter numberFromString: strInput];
                    if (number != nil) {
                        NSLog(@"%ld", [number integerValue]);
                    } else {
                        NSLog(@"%@", @"Input Cannot Be Converted to Integer");
                    }
                } else if ([option isEqualToString: @"4"]) {
                    NSLog(@"%@", [strInput stringByAppendingString: @", eh?"]);
                } else if ([option isEqualToString: @"5"]) {
                    if ([strInput characterAtIndex: [strInput length] - 1] == '?') {
                        NSLog(@"%@", @"I don't know");
                    } else if ([strInput characterAtIndex: [strInput length] - 1] == '!') {
                        NSLog(@"%@", @"Whoa, calm down!");
                    }
                } else if ([option isEqualToString: @"6"]) {
                    NSLog(@"%@", [strInput stringByReplacingOccurrencesOfString: @" " withString: @"-"]);
                } else if ([option isEqualToString: @"7"]) {
                    int count = 1;
                    for (int i = 0; i < [strInput length] - 1; i++) {
                        if ([strInput characterAtIndex: i] == ' ') { count++; }
                    }
                    NSLog(@"%d", count);
                } else if ([option isEqualToString: @"8"]) {
                    NSLog(@"%@", [strInput stringByReplacingOccurrencesOfString: @"." withString: @""]);
                }
            }
        }
        
    }
    return 0;
}

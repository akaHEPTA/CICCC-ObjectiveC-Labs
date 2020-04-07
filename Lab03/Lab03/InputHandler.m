//
//  InputManager.m
//  Lab3
//
//  Created by Richard Cho on 2020-03-25.
//  Copyright © 2020 Richard Cho. All rights reserved.
//

#import "InputHandler.h"

@implementation InputHandler

+ (NSString *)getUserInput:(int) maxLength {
    return [self getUserInput:maxLength prompt: nil];
}

+ (NSString *)getUserInput:(int) maxLength prompt:(NSString *) prompt {
    if (maxLength < 1) { maxLength = 255; }
    if (prompt != nil) { NSLog(@"%@", prompt);}
    char inputChars[maxLength];
    char * result = fgets(inputChars, maxLength, stdin);
    if (result != NULL) {
        return [[NSString stringWithUTF8String: inputChars] stringByTrimmingCharactersInSet: [NSCharacterSet whitespaceAndNewlineCharacterSet]];
    }
    return NULL;
}

@end

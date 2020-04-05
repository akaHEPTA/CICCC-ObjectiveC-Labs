//
//  NSString+PigLatin.m
//  Lab13
//
//  Created by Richard Cho on 2020-04-04.
//  Copyright © 2020 Richard Cho. All rights reserved.
//

#import "NSString+PigLatin.h"

@implementation NSString (PigLatin)

- (NSString *)stringByPigLatinization {
    NSCharacterSet *vowels = [NSCharacterSet characterSetWithCharactersInString:@"aeiouAEIOU"];
    NSMutableArray *words = [[[self lowercaseString] componentsSeparatedByString:@" "] mutableCopy];
    
    for (int i = 0; i < [words count]; i++) {
        NSArray *tokens = [words[i] componentsSeparatedByCharactersInSet:vowels];
        NSString *temp = words[i];
        
        // If current word starts with consonent or the word itself is not a letter -> move first consonent to the end
        if (![vowels characterIsMember: [temp characterAtIndex:0]] || ![tokens count]) {
            temp = [[words[i] substringFromIndex:[tokens[0] length]] stringByAppendingString:tokens[0]];
        }
        
        words[i] = [[temp stringByAppendingString:@"ay"] capitalizedString];
    }
    
    return [words componentsJoinedByString:@" "];
}

@end

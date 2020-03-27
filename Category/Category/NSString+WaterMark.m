
//
//  NSObject+WaterMARk.m
//  Category
//
//  Created by Richard Cho on 2020-03-27.
//  Copyright © 2020 Richard Cho. All rights reserved.
//

#import "NSString+WaterMark.h"

@implementation NSString (WaterMark)

- (NSString *)addWaterMark {
    return [@"CICCC " stringByAppendingString:self];
}

@end

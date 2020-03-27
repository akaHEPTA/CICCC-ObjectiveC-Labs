//
//  main.m
//  Category
//
//  Created by Richard Cho on 2020-03-27.
//  Copyright © 2020 Richard Cho. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSString+WaterMark.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString *name = @"Daniel";
        NSLog([name addWaterMark]);
    }
    return 0;
}

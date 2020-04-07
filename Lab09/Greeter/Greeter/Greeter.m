//
//  Delegator.m
//  Lab09
//
//  Created by Richard Cho on 2020-04-07.
//  Copyright © 2020 Richard Cho. All rights reserved.
//

#import "Greeter.h"

@implementation Greeter

- (void)greeting {
    NSLog(@"%@", [self.delegate shouldSayHello] ? @"Hello" : @"...");
}

@end

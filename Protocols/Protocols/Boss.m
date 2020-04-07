//
//  Boss.m
//  Protocols
//
//  Created by Richard Cho on 2020-04-06.
//  Copyright © 2020 Richard Cho. All rights reserved.
//

#import "Boss.h"

@implementation Boss

- (void) calculateTax {
    float tax = [_delegate calcTax]; // _delegate is nil -> return 0
    NSLog(@"Pay $ %f as tax this year", tax);
}

@end

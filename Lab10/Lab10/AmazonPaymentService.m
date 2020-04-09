//
//  AmazonPaymentService.m
//  Lab10
//
//  Created by Richard Cho on 2020-04-08.
//  Copyright © 2020 Richard Cho. All rights reserved.
//

#import "AmazonPaymentService.h"

@implementation AmazonPaymentService

- (void)processPaymentAmount:(nonnull NSInteger *)amount {
    NSLog(@"Amazon processed amount $%ld", amount);
}

- (BOOL)canProcessPayment {
    // 0 -> NO / 1 -> YES
    return arc4random_uniform(2) != 0;
}

@end

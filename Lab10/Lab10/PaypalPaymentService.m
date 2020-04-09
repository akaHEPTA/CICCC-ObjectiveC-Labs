//
//  PaypalPaymentService.m
//  Lab10
//
//  Created by Richard Cho on 2020-04-08.
//  Copyright © 2020 Richard Cho. All rights reserved.
//

#import "PaypalPaymentService.h"

@implementation PaypalPaymentService

- (void)processPaymentAmount:(nonnull NSInteger *)amount {
    NSLog(@"Paypal processed amount $%ld", amount);
}

- (BOOL)canProcessPayment {
    return arc4random_uniform(2) != 0;
}

@end

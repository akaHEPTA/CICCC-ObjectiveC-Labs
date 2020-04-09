//
//  PaymentGateway.m
//  Lab10
//
//  Created by Richard Cho on 2020-04-07.
//  Copyright © 2020 Richard Cho. All rights reserved.
//

#import "PaymentGateway.h"

@implementation PaymentGateway

- (void)processPaymentAmount:(NSInteger *)amount {
    if ([self.paymentDelegate canProcessPayment]){
        [self.paymentDelegate processPaymentAmount:amount];
    } else {
        NSLog(@"There is something wrong. Sorry for your inconvenient.");
    }
}

@end

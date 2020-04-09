//
//  main.m
//  Lab10
//
//  Created by Richard Cho on 2020-04-07.
//  Copyright © 2020 Richard Cho. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputHandler.h"
#import "PaymentGateway.h"
#import "AmazonPaymentService.h"
#import "PaypalPaymentService.h"
#import "StripePaymentService.h"
#import "ApplePaymentService.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // Random number between 100...1000
        NSInteger price = arc4random_uniform(901) + 100;
        
        NSLog(@"Thank you for shopping at Acme.com");
        NSLog(@"Your total today is $%ld", price);
        NSLog(@"Please select your payment method");
        NSLog(@"1: Amazon, 2: Apple, 3: Paypal, 4: Stripe");
        
        NSInteger userInput = [[InputHandler getUserInput:10] integerValue];
        NSLog(@"input %ld", userInput);
        
        PaymentGateway * gateway = [PaymentGateway new];
        AmazonPaymentService * amazonPaymentService = [AmazonPaymentService new];
        ApplePaymentService * applePaymentService = [ApplePaymentService new];
        PaypalPaymentService * paypalPaymentService = [PaypalPaymentService new];
        StripePaymentService * stripePaymentService = [StripePaymentService new];
        
        switch (userInput) {
            case 1: gateway.paymentDelegate = amazonPaymentService; break;
            case 2: gateway.paymentDelegate = applePaymentService; break;
            case 3: gateway.paymentDelegate = paypalPaymentService; break;
            case 4: gateway.paymentDelegate = stripePaymentService; break;
            default: break;
        }
        
        [gateway processPaymentAmount:price];
        
    }
    return 0;
}


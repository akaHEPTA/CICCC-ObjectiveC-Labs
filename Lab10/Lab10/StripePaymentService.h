//
//  StripePaymentService.h
//  Lab10
//
//  Created by Richard Cho on 2020-04-08.
//  Copyright © 2020 Richard Cho. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PaymentGateway.h"

NS_ASSUME_NONNULL_BEGIN

@interface StripePaymentService : NSObject <PaymentDelegate>;

- (void)processPaymentAmount:(nonnull NSInteger *)amount;
- (BOOL)canProcessPayment;

@end

NS_ASSUME_NONNULL_END

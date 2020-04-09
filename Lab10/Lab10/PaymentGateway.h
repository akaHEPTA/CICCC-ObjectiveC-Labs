//
//  PaymentGateway.h
//  Lab10
//
//  Created by Richard Cho on 2020-04-07.
//  Copyright © 2020 Richard Cho. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol PaymentDelegate <NSObject>

@required
- (void)processPaymentAmount:(NSInteger *)amount;
- (BOOL)canProcessPayment;

@end



@interface PaymentGateway : NSObject

@property (nonatomic, weak) id paymentDelegate;

- (void)processPaymentAmount:(NSInteger *)amount;

@end

NS_ASSUME_NONNULL_END

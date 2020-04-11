//
//  DeliveryCar.h
//  PizzaRestaurant
//
//  Created by Richard Cho on 2020-04-10.
//  Copyright © 2020 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Pizza.h"

NS_ASSUME_NONNULL_BEGIN

@interface DeliveryCar : NSObject

- (void)deliverPizza:(Pizza *)pizza;

@end

NS_ASSUME_NONNULL_END

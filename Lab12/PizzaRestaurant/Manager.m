//
//  Manager.m
//  PizzaRestaurant
//
//  Created by Richard Cho on 2020-04-10.
//  Copyright © 2020 Lighthouse Labs. All rights reserved.
//

#import "Manager.h"

@implementation Manager

- (instancetype)initWithDeliveryService:(DeliveryService *)deliveryService {
    self = [super init];
    if (self) {
        _deliveryService = deliveryService;
    }
    return self;
}

- (BOOL)kitchen:(nonnull Kitchen *)kitchen shouldMakePizzaOfSize:(PizzaSize)size andToppings:(nonnull NSArray *)toppings {
    return YES;
}

- (BOOL)kitchenShouldUpgradeOrder:(Kitchen *)kitchen {
    return NO;
}

- (void)kitchenDidMakePizza:(Pizza *)pizza {
    if (pizza != NULL) {
        NSLog(@"Hey, chef! Thanks for this %@ pizza with %@!", [Pizza getPizzaSizeToString:pizza.size], [pizza.toppings componentsJoinedByString:@", "]);
        [_deliveryService deliverPizza:pizza];
    }
}

@end

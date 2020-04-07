//
//  Kitchen.m
//  PizzaRestaurant
//
//  Created by Steven Masuch on 2014-07-19.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import "Kitchen.h"

@implementation Kitchen

- (Pizza *)makePizza: (NSString *) order {
    NSArray *orders = [order componentsSeparatedByString:@" "];
    if ([orders count] == 0) { return NULL; }
    
    if ([orders count] == 1) {
        if ([orders[0] isEqualToString:@"pepperoni"]) {
            return [Pizza pepperoniWithSize:MEDIUM];
        } else if ([orders[0] isEqualToString:@"meatlovers"]) {
            return [Pizza meatLoversWithSize:MEDIUM];
        }
    } else if ([orders count] == 2) {
        if ([orders[1] isEqualToString:@"pepperoni"]) {
            return [Pizza pepperoniWithSize:[self getPizzaSize:orders[0]]];
        } else if ([orders[1] isEqualToString:@"meatlovers"]) {
            return [Pizza meatLoversWithSize:[self getPizzaSize:orders[0]]];
        }
        return [[Pizza alloc] initWithSize:[self getPizzaSize:orders[0]] andToppings:[orders subarrayWithRange:NSMakeRange(1, [orders count] - 1)]];
    } else {
        return [[Pizza alloc] initWithSize:[self getPizzaSize:orders[0]] andToppings:[orders subarrayWithRange:NSMakeRange(1, [orders count] - 1)]];
    }
    
    return NULL;
}

- (PizzaSize) getPizzaSize: (NSString *) size {
    NSString *pizzaSize = [size uppercaseString];
    if ([pizzaSize isEqualToString:@"SMALL"]) {
        return SMALL;
    } else if ([pizzaSize isEqualToString:@"MEDIUM"]) {
        return MEDIUM;
    } else if ([pizzaSize isEqualToString:@"LARGE"]) {
        return LARGE;
    }
    return UNKNOWN;
}

@end

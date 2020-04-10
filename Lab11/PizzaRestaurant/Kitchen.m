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
    
    PizzaSize size = [self getPizzaSize: orders[0]];
    NSMutableArray *toppings = [NSMutableArray new];
    
    if (size == UNKNOWN) {
        if ([orders count] != 1) {
            size = [self getPizzaSize:orders[1]];
        }
        toppings[0] = orders[0];
    } else {
        if ([_delegate kitchenShouldUpgradeOrder:self]) {
            if ((size + 1) > LARGE) {
                size = LARGE;
            } else {
                size = size + 1;
            }
        }
        [toppings addObject:[[orders subarrayWithRange:NSMakeRange(1, [orders count] - 1)] mutableCopy]];
    }
    
    if ([_delegate kitchen:self shouldMakePizzaOfSize:size andToppings:[orders subarrayWithRange:NSMakeRange(1, [orders count] - 1)]]) {
        Pizza *pizza = [[Pizza alloc] initWithSize:size andToppings:toppings];
        if ([_delegate isKindOfClass:[CheeryManager class]]) {
            [_delegate kitchenDidMakePizza:pizza];
        }
        return pizza;
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

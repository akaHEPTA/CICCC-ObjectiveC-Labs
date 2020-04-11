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
    
    PizzaSize size = [Pizza getPizzaSizeToEnum: orders[0]];
    NSMutableArray *toppings = [NSMutableArray new];
    
    if (size == UNKNOWN) {
        if ([orders count] != 1) {
            size = [Pizza getPizzaSizeToEnum: orders[1]];
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
        return pizza;
    }

    return NULL;
}


@end

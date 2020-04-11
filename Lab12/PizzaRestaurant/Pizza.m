//
//  Pizza.m
//  PizzaRestaurant
//
//  Created by Richard Cho on 2020-04-04.
//  Copyright © 2020 Lighthouse Labs. All rights reserved.
//

#import "Pizza.h"

@implementation Pizza

- (instancetype)initWithSize: (PizzaSize) size andToppings: (NSArray<NSString *>*) toppings {
    self = [super init];
    if (self) {
        _size = size;
        _toppings = toppings;
    }
    return self;
}

- (NSString *)description {
    return [NSString stringWithFormat:@"%@ Pizza with %@", [Pizza getPizzaSizeToString:_size], [_toppings componentsJoinedByString:@", "]];
}

+ (PizzaSize) getPizzaSizeToEnum: (NSString *) size {
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

+ (NSString *) getPizzaSizeToString:(PizzaSize)size {
    if (size == 1) {
        return @"SMALL";
    } else if (size == 2) {
        return @"MEDIUM";
    } else if (size == 3) {
        return @"LARGE";
    } else {
        return @"UNKNOWN";
    }
}


@end

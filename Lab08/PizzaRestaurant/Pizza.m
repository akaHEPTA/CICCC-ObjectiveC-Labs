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

+ (Pizza *)pepperoniWithSize: (PizzaSize) size {
    return [[Pizza alloc] initWithSize:size andToppings:@[@"pepperoni"]];
}

+ (Pizza *)meatLoversWithSize: (PizzaSize) size {
    return [[Pizza alloc] initWithSize:size andToppings:@[@"bacon", @"ham", @"sausage", @"pepperoni"]];
}

@end

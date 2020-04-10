//
//  CheeryManager.m
//  PizzaRestaurant
//
//  Created by Richard Cho on 2020-04-09.
//  Copyright © 2020 Lighthouse Labs. All rights reserved.
//

#import "CheeryManager.h"

@implementation CheeryManager

- (BOOL)kitchen:(nonnull Kitchen *)kitchen shouldMakePizzaOfSize:(PizzaSize)size andToppings:(nonnull NSArray *)toppings {
    return YES;
}

- (BOOL)kitchenShouldUpgradeOrder:(nonnull Kitchen *)kitchen {
    return YES;
}

- (void)kitchenDidMakePizza:(Pizza *)pizza {
    NSLog(@"Nice thing");
}

@end

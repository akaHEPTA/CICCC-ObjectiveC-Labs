//
//  Manager.m
//  PizzaRestaurant
//
//  Created by Richard Cho on 2020-04-09.
//  Copyright © 2020 Lighthouse Labs. All rights reserved.
//

#import "AnchovyHaterManager.h"

@implementation AnchovyHaterManager

- (BOOL)kitchen:(nonnull Kitchen *)kitchen shouldMakePizzaOfSize:(PizzaSize)size andToppings:(nonnull NSArray *)toppings {
    for (NSString *topping in toppings) {
        if ([topping isEqualToString:@"anchovy"]) {
            return NO;
        }
    }
    return YES;
}

- (BOOL)kitchenShouldUpgradeOrder:(nonnull Kitchen *)kitchen {
    return NO;
}

@end

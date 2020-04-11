//
//  DeliveryCar.m
//  PizzaRestaurant
//
//  Created by Richard Cho on 2020-04-10.
//  Copyright © 2020 Lighthouse Labs. All rights reserved.
//

#import "DeliveryCar.h"

@implementation DeliveryCar

- (void)deliverPizza:(Pizza *)pizza {
    NSLog(@"Pizza Delivered: %@", [pizza description]);
}

@end

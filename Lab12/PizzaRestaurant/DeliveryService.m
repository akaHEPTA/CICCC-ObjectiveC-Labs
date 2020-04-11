//
//  DeliveryService.m
//  PizzaRestaurant
//
//  Created by Richard Cho on 2020-04-10.
//  Copyright © 2020 Lighthouse Labs. All rights reserved.
//

#import "DeliveryService.h"

@implementation DeliveryService

- (instancetype)init
{
    self = [super init];
    if (self) {
        _deliveryCar = [DeliveryCar new];
        _orderList = [NSMutableArray new];
    }
    return self;
}

- (void)deliverPizza:(Pizza *)pizza {
    [_deliveryCar deliverPizza:pizza];
    [_orderList addObject:[pizza description]];
}

- (NSArray<NSString *>*)getOrderList {
    return _orderList;
}

@end

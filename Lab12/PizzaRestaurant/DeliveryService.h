//
//  DeliveryService.h
//  PizzaRestaurant
//
//  Created by Richard Cho on 2020-04-10.
//  Copyright © 2020 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Pizza.h"
#import "DeliveryCar.h"

NS_ASSUME_NONNULL_BEGIN

@interface DeliveryService : NSObject

@property (nonatomic) NSMutableArray<NSString *>* orderList;
@property (nonatomic) DeliveryCar *deliveryCar;

- (instancetype)init;
- (void)deliverPizza:(Pizza *)pizza;
- (NSArray<NSString *>*)getOrderList;

@end

NS_ASSUME_NONNULL_END

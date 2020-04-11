//
//  Manager.h
//  PizzaRestaurant
//
//  Created by Richard Cho on 2020-04-10.
//  Copyright © 2020 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Kitchen.h"
#import "DeliveryService.h"

NS_ASSUME_NONNULL_BEGIN

@interface Manager : NSObject <KitchenDelegate>
@property (nonatomic) DeliveryService *deliveryService;

- (instancetype)initWithDeliveryService:(DeliveryService *)deliveryService;

- (BOOL)kitchen:(nonnull Kitchen *)kitchen shouldMakePizzaOfSize:(PizzaSize)size andToppings:(nonnull NSArray *)toppings;
- (BOOL)kitchenShouldUpgradeOrder:(Kitchen *)kitchen;
- (void)kitchenDidMakePizza:(Pizza *)pizza;

@end

NS_ASSUME_NONNULL_END

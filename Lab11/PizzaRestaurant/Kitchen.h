//
//  Kitchen.h
//  PizzaRestaurant
//
//  Created by Steven Masuch on 2014-07-19.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "KitchenDelegate.h"
#import "Pizza.h"
#import "CheeryManager.h"

@interface Kitchen : NSObject

@property (nonatomic) id<KitchenDelegate> delegate;

- (Pizza *)makePizza: (NSString *) order;
- (PizzaSize)getPizzaSize: (NSString *) size;

@end

//
//  Pizza.h
//  PizzaRestaurant
//
//  Created by Richard Cho on 2020-04-04.
//  Copyright © 2020 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>



NS_ASSUME_NONNULL_BEGIN

@interface Pizza : NSObject

typedef NS_ENUM(NSUInteger, PizzaSize) {
    SMALL = 1,
    MEDIUM = 2,
    LARGE = 3,
    UNKNOWN = NSUIntegerMax
};

@property (nonatomic, readonly, assign) PizzaSize size;
@property (nonatomic, readonly) NSArray<NSString *>* toppings;

- (instancetype)initWithSize: (PizzaSize) size andToppings: (NSArray<NSString *>*) toppings;
+ (Pizza *)pepperoniWithSize: (PizzaSize) size;
+ (Pizza *)meatLoversWithSize: (PizzaSize) size;

@end

NS_ASSUME_NONNULL_END

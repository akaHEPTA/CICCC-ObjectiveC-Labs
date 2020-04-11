//
//  main.m
//  PizzaRestaurant
//
//  Created by Steven Masuch on 2014-07-19.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "DeliveryService.h"
#import "Kitchen.h"
#import "Manager.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        DeliveryService *deliveryService = [DeliveryService new];
        Manager *manager = [[Manager alloc] initWithDeliveryService:deliveryService];
        Kitchen *restaurantKitchen = [Kitchen new];
        restaurantKitchen.delegate = manager;
        
        while (TRUE) {
            NSLog(@"Please pick your pizza size and toppings:");
            NSLog(@"> ");
            char str2[100];
            fgets (str2, 100, stdin);
            
            NSString *inputString = [[NSString alloc] initWithUTF8String:str2];
            inputString = [inputString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
            
            NSLog(@"Input was %@", inputString);
            
            Pizza *pizza = [restaurantKitchen makePizza:inputString];
            NSLog(@"size: %ld, topping: %@", pizza.size, pizza.toppings);
            [deliveryService deliverPizza:pizza];
            
            NSLog(@"\nDelivered Pizza List:\n[%@]", [[deliveryService getOrderList] componentsJoinedByString:@"\n"]);
        }
        
    }
    return 0;
}


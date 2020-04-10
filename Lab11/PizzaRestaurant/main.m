//
//  main.m
//  PizzaRestaurant
//
//  Created by Steven Masuch on 2014-07-19.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Kitchen.h"
#import "AnchovyHaterManager.h"
#import "CheeryManager.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Kitchen *restaurantKitchen = [Kitchen new];
        
        AnchovyHaterManager *anchovyHater = [AnchovyHaterManager new];
        CheeryManager *cheery = [CheeryManager new];
        
        while (TRUE) {
            NSLog(@"Please select manager:");
            NSLog(@"1: Manager 1, 2: Manager 2, 3: No manager");
            char str[10];
            fgets (str, 10, stdin);
            
            NSString *manager = [[NSString alloc] initWithUTF8String:str];
            manager = [manager stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
            
            switch ([manager integerValue]) {
                case 1: restaurantKitchen.delegate = anchovyHater; break;
                case 2: restaurantKitchen.delegate = cheery; break;
                default: restaurantKitchen.delegate = NULL;
            }
            
            NSLog(@"Please pick your pizza size and toppings:");
            NSLog(@"> ");
            char str2[100];
            fgets (str2, 100, stdin);
            
            NSString *inputString = [[NSString alloc] initWithUTF8String:str2];
            inputString = [inputString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
            
            NSLog(@"Input was %@", inputString);
            
            Pizza *pizza = [restaurantKitchen makePizza:inputString];
            NSLog(@"size: %ld, topping: %@", pizza.size, pizza.toppings);
        }
        
    }
    return 0;
}


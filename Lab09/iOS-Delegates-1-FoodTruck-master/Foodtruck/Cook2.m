//
//  Cook2.m
//  Foodtruck
//
//  Created by Richard Cho on 2020-04-07.
//  Copyright © 2020 Lighthouse Labs. All rights reserved.
//

#import "Cook2.h"

@implementation Cook2

- (double)foodTruck:(FoodTruck *)truck priceForFood:(NSString *)food {
    if ([food isEqualToString:@"bao"]) {
        return 3.33;
    } else if ([food isEqualToString:@"shortbread"]) {
        return 7.77;
    }
    return 0.0;
}

@end

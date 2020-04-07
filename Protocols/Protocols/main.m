//
//  main.m
//  Protocols
//
//  Created by Richard Cho on 2020-04-06.
//  Copyright © 2020 Richard Cho. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Boss.h"
#import "Carlos.h"
#import "Diego.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Boss *boss = [Boss new];
        Diego *diego = [Diego new];
        Carlos *carlos = [Carlos new];
        
        boss.delegate = diego;
        [boss calculateTax];
    }
    return 0;
}

/*
 Protocol: an interface (in Java)
 Delegate Pattern (iOS): Software design pattern
 Delegate: an object that implements a protocol (interface)
 
 Defining a Protocol
 */

@protocol Comparable <NSObject>

@optional // Optional methods

@required // required methods have to be implemented

@end

//
//  main.m
//  Lab09
//
//  Created by Richard Cho on 2020-04-06.
//  Copyright © 2020 Richard Cho. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Greeter.h"
#import "FriendlyGreetingDecider.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Greeter *greeter = [Greeter new];
        FriendlyGreetingDecider *fgd = [FriendlyGreetingDecider new];
        
        greeter.delegate = fgd;
        [greeter greeting];
    }
    return 0;
}

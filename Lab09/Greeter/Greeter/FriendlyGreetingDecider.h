//
//  FriendlyGreetingDecider.h
//  Lab09
//
//  Created by Richard Cho on 2020-04-07.
//  Copyright © 2020 Richard Cho. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Greeter.h"

NS_ASSUME_NONNULL_BEGIN

@interface FriendlyGreetingDecider : NSObject <GreeterDelegate>;

- (BOOL)shouldSayHello;

@end

NS_ASSUME_NONNULL_END

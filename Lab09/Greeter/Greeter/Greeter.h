//
//  Delegator.h
//  Lab09
//
//  Created by Richard Cho on 2020-04-07.
//  Copyright © 2020 Richard Cho. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol GreeterDelegate

@required
- (BOOL)shouldSayHello;

@end


@interface Greeter : NSObject

@property (nonatomic, weak) id<GreeterDelegate> delegate;
- (void)greeting;

@end

NS_ASSUME_NONNULL_END

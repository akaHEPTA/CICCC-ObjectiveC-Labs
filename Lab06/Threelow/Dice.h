//
//  Dice.h
//  Threelow
//
//  Created by Richard Cho on 2020-04-07.
//  Copyright © 2020 Richard Cho. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Dice : NSObject

@property (nonatomic) unsigned char currentValue;
@property (nonatomic) BOOL isHeld;

- (instancetype)init;
- (void)roll;

@end

NS_ASSUME_NONNULL_END

//
//  GameController.h
//  Threelow
//
//  Created by Richard Cho on 2020-04-07.
//  Copyright © 2020 Richard Cho. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dice.h"

NS_ASSUME_NONNULL_BEGIN

@interface GameController : NSObject

@property (nonatomic, strong) NSMutableArray<Dice *> *dices;
//@property (nonatomic, strong) NSMutableArray<NSNumber *> *held;

- (instancetype)init;
- (void)rollDices;
- (void)holdDie:(NSInteger)number;
- (void)resetDices;
- (void)printDices;
- (void)lastRoll;
- (BOOL)heldAll;

@end

NS_ASSUME_NONNULL_END

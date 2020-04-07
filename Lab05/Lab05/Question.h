//
//  AdditionQuestion.h
//  Lab3
//
//  Created by Richard Cho on 2020-03-25.
//  Copyright © 2020 Richard Cho. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Question : NSObject

@property (nonatomic, copy) NSString* question;
@property (nonatomic) NSInteger answer;

@property (nonatomic, strong) NSDate* startTime;
@property (nonatomic, strong) NSDate* endTime;

@property (nonatomic) NSInteger leftValue;
@property (nonatomic) NSInteger rightValue;
           
- (NSTimeInterval)timeToAnswer;
- (void)generateQuestion;

@end

NS_ASSUME_NONNULL_END

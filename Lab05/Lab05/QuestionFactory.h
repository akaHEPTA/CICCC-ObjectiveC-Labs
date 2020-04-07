//
//  QuestionFactory.h
//  Lab3
//
//  Created by Richard Cho on 2020-03-27.
//  Copyright © 2020 Richard Cho. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@class Question;

@interface QuestionFactory : NSObject

@property (nonatomic, strong) NSArray *questionSubclassNames;
- (Question *)generateRandomQuestion;

@end

NS_ASSUME_NONNULL_END

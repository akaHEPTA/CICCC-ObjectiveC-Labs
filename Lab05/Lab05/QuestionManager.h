//
//  QuestionManager.h
//  Lab3
//
//  Created by Richard Cho on 2020-03-26.
//  Copyright © 2020 Richard Cho. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@class Question;

@interface QuestionManager : NSObject

@property (nonatomic, strong) NSMutableArray* questions;

- (NSString *)timeOutput;

@end

NS_ASSUME_NONNULL_END

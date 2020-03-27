//
//  ScoreKeeper.h
//  Lab3
//
//  Created by Richard Cho on 2020-03-25.
//  Copyright © 2020 Richard Cho. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ScoreKeeper : NSObject

@property (nonatomic, assign) NSInteger correct;
@property (nonatomic, assign) NSInteger wrong;

- (NSString *)printScore;

@end

//
//  InputManager.h
//  Lab3
//
//  Created by Richard Cho on 2020-03-25.
//  Copyright © 2020 Richard Cho. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface InputHandler : NSObject

+ (NSString *)getUserInput:(int) maxLength;
+ (NSString *)getUserInput:(int) maxLength prompt:(NSString *) prompt;

@end

NS_ASSUME_NONNULL_END

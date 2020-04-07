//
//  Boss.h
//  Protocols
//
//  Created by Richard Cho on 2020-04-06.
//  Copyright © 2020 Richard Cho. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol AccountantDelegate <NSObject>

@required
- (float)calcTax;

@optional
- (void)actFunny;

@end

@interface Boss : NSObject

// any object that conforms to AccountantDelegate
@property (nonatomic) id<AccountantDelegate>delegate;
- (void)calculateTax;

@end

NS_ASSUME_NONNULL_END

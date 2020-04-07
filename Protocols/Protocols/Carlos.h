//
//  Carlos.h
//  Protocols
//
//  Created by Richard Cho on 2020-04-06.
//  Copyright © 2020 Richard Cho. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Boss.h"

NS_ASSUME_NONNULL_BEGIN

@interface Carlos : NSObject <AccountantDelegate>

- (float) calcTax;

@end

NS_ASSUME_NONNULL_END

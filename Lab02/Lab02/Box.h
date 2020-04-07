//
//  Box.h
//  Lab2
//
//  Created by Richard Cho on 2020-03-24.
//  Copyright © 2020 Richard Cho. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Box : NSObject

@property (nonatomic, assign) float height;
@property (nonatomic, assign) float width;
@property (nonatomic, assign) float length;

- (instancetype)initWithHeight: (float) height andWidth: (float) width andLength: (float) length;
- (float) getVolume;
- (int) doesThisCanContainOthers: (Box *) otherBox;

@end

NS_ASSUME_NONNULL_END

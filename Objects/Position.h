//
//  Position.h
//  Drones-On-Platform
//
//  Created by eugene on 14/12/16.
//  Copyright © 2016 lodossteam. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Coordinate.h"

@interface Position : NSObject

+ (instancetype)initWithX:(NSInteger)X Y:(NSInteger)Y direction:(NSString *)direction;
- (NSString *)asText;

- (void)turnLeft;
- (void)turnRight;
- (void)moveForward;

@end

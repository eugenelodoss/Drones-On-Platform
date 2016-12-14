//
//  Dron.h
//  Drones-On-Platform
//
//  Created by eugene on 14/12/16.
//  Copyright © 2016 lodossteam. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Platform.h"

@interface Dron : NSObject

+ (instancetype)initAtX:(NSUInteger)X Y:(NSUInteger)Y direction:(NSString *)direction platform:(Platform *)platform;
- (void)handleCommand:(NSString *)command;
- (void)statusOutput;

@end

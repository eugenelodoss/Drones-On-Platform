//
//  Dron.m
//  Drones-On-Platform
//
//  Created by eugene on 14/12/16.
//  Copyright © 2016 lodossteam. All rights reserved.
//

#import "Dron.h"
#import "Position.h"
#import "Platform.h"

#define CASE(str)                       if ([__s__ isEqualToString:(str)])
#define SWITCH(s)                       for (NSString *__s__ = (s); ; )
#define DEFAULT

@interface Dron()

@property (strong, nonatomic) Position *position;
@property (strong, nonatomic) Platform *platform;

@end

@implementation Dron

+ (instancetype)initAtStart {
    Dron *new = [[Dron alloc] init];
    new.position = [Position initWithX:0 Y:0 direction:@"N"];
    return new;
}

+ (instancetype)initAtX:(NSUInteger)X Y:(NSUInteger)Y direction:(NSString *)direction platform:(Platform *)platform {
    Dron *new = [[Dron alloc] init];
    new.position = [Position initWithX:X Y:Y direction:direction];
    new.platform = platform;
    return new;
}

- (void)handleCommand:(NSString *)command {
    if (command == nil) return;
    NSUInteger commandLen = [command length];
    for (int i = 0; i < commandLen; i++) {
        NSString *action = [command substringWithRange:NSMakeRange(i, 1)];
        [self handleAction:action];
    }
}

- (void)handleAction:(NSString *)action {
    SWITCH (action) {
        CASE (@"M") {
            [self.position moveForward];
            break;
        }
        CASE (@"L") {
            [self.position turnLeft];
            break;
        }
        CASE (@"R") {
            [self.position turnRight];
            break;
        }
        DEFAULT {
            break;
        }
    }
}

- (void)statusOutput {
    NSString *postitionCode = self.position.asText;
    NSString *outputSrt = [NSString stringWithFormat:@"%@", postitionCode];
    NSLog(@"%@", outputSrt);
}

@end

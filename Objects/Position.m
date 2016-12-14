//
//  Position.m
//  Drones-On-Platform
//
//  Created by eugene on 14/12/16.
//  Copyright © 2016 lodossteam. All rights reserved.
//

#import "Position.h"

#define CASE(str)                       if ([__s__ isEqualToString:(str)])
#define SWITCH(s)                       for (NSString *__s__ = (s); ; )
#define DEFAULT

typedef NS_ENUM (NSInteger, Direction) {
    North = 1,
    East,
    South,
    West,
};

@interface Position()

@property (assign, nonatomic) NSInteger direction;
@property (strong, nonatomic) Coordinate *coordinates;

@end

@implementation Position

+ (instancetype)initWithX:(NSInteger)X Y:(NSInteger)Y direction:(NSString *)direction {
    Position *new = [[Position alloc] init];
    new.coordinates = [[Coordinate alloc] init];
    new.coordinates.X = X;
    new.coordinates.Y = Y;
    [new setupDirectionWithLetter:direction];
    
    return new;
}

- (void)turnLeft {
    self.direction--;
    if (self.direction < North)
        self.direction = West;
}

- (void)turnRight {
    self.direction++;
    if (self.direction > West)
        self.direction = North;
}

- (NSString *)asText {
    return [NSString stringWithFormat:@"%li %li %@", (long)self.coordinates.X, (long)self.coordinates.Y, [self directionLetter]];
}

- (void)moveForward {
    switch (self.direction) {
        case 1:
            self.coordinates.Y++;
            break;
        case 2:
            self.coordinates.X++;
            break;
        case 3:
            self.coordinates.Y--;
            break;
        case 4:
            self.coordinates.X--;
            break;
            
        default:
            break;
    }
}

- (void)setupDirectionWithLetter:(NSString *)letter {
    if (letter == nil) {
        self.direction = North;
        return;
    }
    SWITCH (letter) {
        CASE (@"N") {
            self.direction = North;
            return;
        }
        CASE (@"E") {
            self.direction = East;
            return;
        }
        CASE (@"S") {
            self.direction = South;
            return;
        }
        CASE (@"W") {
            self.direction = West;
            return;
        }
        DEFAULT {
            self.direction = North;
            return;
        }
    }
}

- (NSString *)directionLetter {
    switch (self.direction) {
        case North:
            return @"N";
            break;
        case East:
            return @"E";
            break;
        case South:
            return @"S";
            break;
        case West:
            return @"W";
            break;
        default:
            return @"N";
            break;
    }
}

@end

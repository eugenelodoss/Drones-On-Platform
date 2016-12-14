//
//  Platform.m
//  Drones-On-Platform
//
//  Created by eugene on 14/12/16.
//  Copyright © 2016 lodossteam. All rights reserved.
//

#import "Platform.h"

@implementation Platform

+ (instancetype)initWithWidth:(NSUInteger)width andHeight:(NSUInteger)height {
    Platform *new = [[Platform alloc] init];
    new.frame = CGSizeMake(width, height);
    return new;
}

@end

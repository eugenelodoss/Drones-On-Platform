//
//  Platform.h
//  Drones-On-Platform
//
//  Created by eugene on 14/12/16.
//  Copyright © 2016 lodossteam. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Platform : NSObject

+ (instancetype)initWithWidth:(NSUInteger)width andHeight:(NSUInteger)height;

@property (assign, nonatomic) CGSize frame;

@end

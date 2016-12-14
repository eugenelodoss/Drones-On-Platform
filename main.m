//
//  main.m
//  Drones-On-Platform
//
//  Created by eugene on 14/12/16.
//  Copyright © 2016 lodossteam. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"
#import "DroneTaskManager.h"

int main(int argc, char * argv[]) {
    @autoreleasepool {
        [DroneTaskManager start];
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
    }
}

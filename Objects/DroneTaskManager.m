//
//  DroneTaskManager.m
//  Drones-On-Platform
//
//  Created by eugene on 14/12/16.
//  Copyright © 2016 lodossteam. All rights reserved.
//

#import "DroneTaskManager.h"
#import "Platform.h"
#import "Dron.h"

@implementation DroneTaskManager

+ (void)start {
    Platform *platform = [Platform initWithWidth:5 andHeight:5]; // 5 5

    Dron *dron1 = [Dron initAtX:1 Y:2 direction:@"N" platform:platform]; // 1 2 N
    [dron1 handleCommand:@"LMLMLMLMM"]; // LMLMLMLMM
    [dron1 statusOutput];
    
    Dron *dron2 = [Dron initAtX:3 Y:3 direction:@"E" platform:platform]; // 3 3 E
    [dron2 handleCommand:@"MMRMMRMRRM"]; // MMRMMRMRRM
    [dron2 statusOutput];
    
    Dron *dron3 = [Dron initAtX:-9 Y:-8 direction:@"__" platform:platform];
    [dron3 handleCommand:@"LMLMLML1MML___ML5MLMLMMMMMMMMRM"];
    [dron3 statusOutput];
    
    Dron *dron4 = [Dron initAtX:-999 Y:-999 direction:nil platform:platform];
    [dron4 handleCommand:nil];
    [dron4 statusOutput];
}

@end

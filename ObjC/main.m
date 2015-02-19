//
//  main.m
//  ObjC
//
//  Created by Francisco Ferreira on 2/12/15.
//  Copyright (c) 2015 CFerreira. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Device.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Device *d = [[Device alloc] init];
        
        [d ChooseLocation:@"Bhia"];
    }
    return 0;
}
//
//  Device.m
//  ObjC
//
//  Created by Francisco Ferreira on 2/19/15.
//  Copyright (c) 2015 CFerreira. All rights reserved.
//

#import "Device.h"

@implementation Device

-(void)ChooseLocation:(NSString *)Address{
    
    Navigation *n = [[Navigation alloc] init];
    [n CheckAddress:Address];
}

@end

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
    
    Search *s = [[Search alloc] init];
    [s FindLocation:Address];
}

-(void)ChooseRouteAddressFrom:(NSString *) addressFrom
                    AddressTo:(NSString *) addressTo{
    
    Search *s = [[Search alloc] init];
    [s FindRouteAddressFrom:addressFrom AddressTo:addressTo];
}

@end

//
//  Search.m
//  ObjC
//
//  Created by Francisco Ferreira on 2/19/15.
//  Copyright (c) 2015 CFerreira. All rights reserved.
//

#import "Search.h"

@implementation Search

-(void)FindLocation:(NSString *)Address{

    Navigation *n = [[Navigation alloc] init];
    if( ![n CheckAddress:Address]){
        NSLog(@"Location not found!");
        return;
    }
    
    NSDictionary *places = @{
                             @"Madrid" : @[@135.22, @192.21],
                             @"Londres" : @[@233.22, @22.77],
                             @"Canada" : @[@99.12, @222.12],
                             @"Veneza" : @[@133.77, @1.11],
                             @"Bahia" : @[@43.22, @59.66],
                             };
    
    for(id key in places){
        if( [key isEqualToString:Address] ){
            NSArray *obj = places[key];
            
            [n ShowMapPositionX:[[obj objectAtIndex:0]doubleValue] PositionY:[[obj objectAtIndex:1]doubleValue] LocationName:Address];
            break;
        }
    }
}

-(void)FindRouteAddressFrom:(NSString *)addressFrom AddressTo:(NSString *)addressTo{
    
    Navigation *n = [[Navigation alloc] init];
    if( ![n CheckAddress:addressFrom]){
        NSLog(@"Address from not found!");
        return;
    }
    
    if( ![n CheckAddress:addressTo]){
        NSLog(@"Address to not found!");
        return;
    }
    
    
    NSDictionary *places = @{
                             @"Madrid" : @{
                                        @"Londres": @[
                                                    @[@"Turn left", @300.00, @"Rua"],
                                                    @[@"Turn right", @300.00, @"Ave"],
                                                    @[@"Go straight", @300.00, @"Trave"]
                                                ]
                                     }
                             };
    
    NSLog(@"Calculating route from '%@' to '%@'", addressFrom, addressTo);
    [NSThread sleepForTimeInterval:3.0f];
    
    for(id key in places){
        if( [key isEqualToString:addressFrom ] ){
            NSDictionary *destinys = places[key];
            
            for(id keyy in destinys){
                if( [keyy isEqualToString:addressTo] ){
                    NSArray *destiny = destinys[keyy];
                    
                    for(NSArray *direction in destiny){
                        [NSThread sleepForTimeInterval:3.0f];
                        [n ShowDirections:[direction objectAtIndex:0] Distance:[[direction objectAtIndex:1]doubleValue] Text:[direction objectAtIndex:2] ];
                    }
                    
                    break;
                    
                }
            }
            
        }
    }
    
}

@end

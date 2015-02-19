//
//  Search.m
//  ObjC
//
//  Created by Francisco Ferreira on 2/19/15.
//  Copyright (c) 2015 CFerreira. All rights reserved.
//

#import "Search.h"

@implementation Search

-(NSArray*)FindLocation:(NSString *)Address{

    NSDictionary *places = @{
                             @"Nova Iorque" : @[@135.22, @192.21],
                             @"Imbe" : @[@233.22, @22.77],
                             @"Porto Alegre" : @[@99.12, @222.12],
                             @"São Paulo" : @[@133.77, @1.11],
                             @"Bahia" : @[@43.22, @59.66],
                             };
    
    for(id key in places){
        if( key == Address ){
            return places[key];
        }
    }
    
    return nil;
}

@end

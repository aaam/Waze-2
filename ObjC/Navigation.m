//
//  Navigation.m
//  ObjC
//
//  Created by Francisco Ferreira on 2/19/15.
//  Copyright (c) 2015 CFerreira. All rights reserved.
//

#import "Navigation.h"

@implementation Navigation

-(void)CheckAddress:(NSString *)Address{
    NSArray *names = @[@"Nova Iorque", @"Imbe", @"Porto Alegre", @"São Paulo", @"Bahia"];
    
    for(NSString* obj in names){
        if( obj == Address ){
            
            Search* s = [[Search alloc] init];
            NSArray* pos = [s FindLocation:Address];
            
            [self ShowMapPositionX:[[pos objectAtIndex:0]doubleValue] PositionY:[[pos objectAtIndex:1]doubleValue] LocationName:Address];
        }
    }
    
    NSLog(@"Location not found!");
}

-(void)ShowMapPositionX:(double)x
              PositionY:(double)y
           LocationName:(NSString *)text{

    NSLog(@"Showing '%@' at position X[%.2f] and Y[%.2f]", text, x, y);
}

@end

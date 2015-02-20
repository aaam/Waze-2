//
//  Navigation.m
//  ObjC
//
//  Created by Francisco Ferreira on 2/19/15.
//  Copyright (c) 2015 CFerreira. All rights reserved.
//

#import "Navigation.h"

@implementation Navigation

-(BOOL)CheckAddress:(NSString *)Address{
    NSArray *names = @[@"Nova Iorque", @"Londres", @"Porto Alegre", @"São Paulo", @"Bahia"];
    
    for(NSString* obj in names){
        if( obj == Address ){
            return YES;
        }
    }
    
    return NO;
}

-(void)ShowMapPositionX:(double)x
              PositionY:(double)y
           LocationName:(NSString *)text{

    NSLog(@"Showing '%@' at position X[%.2f] and Y[%.2f]", text, x, y);
}


-(void)ShowDirections:(NSString *)direction
             Distance:(double)distance
                 Text:(NSString *)text{

    NSLog(@"Turn %@ in %f at %@", direction, distance, text);
}
@end

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
    NSLog(@"Checking Address '%@'...", Address);
    [NSThread sleepForTimeInterval:2.0f];
    
    NSArray *names = @[@"Madrid", @"Londres", @"Canada", @"Veneza", @"Bahia"];
    
    for(NSString* obj in names){
        if( [ obj isEqualToString:Address ] ){
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

    NSLog(@"%@ in %.0f meters at %@", direction, distance, text);
}
@end

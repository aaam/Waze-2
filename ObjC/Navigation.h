//
//  Navigation.h
//  ObjC
//
//  Created by Francisco Ferreira on 2/19/15.
//  Copyright (c) 2015 CFerreira. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Search.h"

@interface Navigation : NSObject
{}

-(BOOL)CheckAddress:(NSString *) Address;

-(void)ShowMapPositionX:(double)x
              PositionY:(double)y
           LocationName:(NSString *) text;

-(void)ShowDirections:(NSString *) direction
             Distance:(double) distance
                 Text:(NSString *) text;

@end
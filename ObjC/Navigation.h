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

-(void)CheckAddress:(NSString *) Address;

-(void)ShowMapPositionX:(double)x
              PositionY:(double)y
           LocationName:(NSString *) text;

@end
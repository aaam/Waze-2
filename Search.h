//
//  Search.h
//  ObjC
//
//  Created by Francisco Ferreira on 2/19/15.
//  Copyright (c) 2015 CFerreira. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Navigation.h"

@interface Search : NSObject
{}

-(void)FindLocation:(NSString *) Address;

-(void)FindRouteAddressFrom:(NSString *) addressFrom
                  AddressTo:(NSString *) addressTo;
@end

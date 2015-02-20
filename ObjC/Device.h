//
//  Device.h
//  ObjC
//
//  Created by Francisco Ferreira on 2/19/15.
//  Copyright (c) 2015 CFerreira. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Search.h"

@interface Device : NSObject{
}

-(void)ChooseLocation:(NSString *) Address;

-(void)ChooseRouteAddressFrom:(NSString *) addressFrom
                    AddressTo:(NSString *) addressTo;

@end

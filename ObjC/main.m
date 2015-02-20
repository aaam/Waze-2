//
//  main.m
//  ObjC
//
//  Created by Francisco Ferreira on 2/12/15.
//  Copyright (c) 2015 CFerreira. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Device.h"
#import "User.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Device *d = [[Device alloc] init];
        User *u =[[User alloc] init];
        
        [u RegisterWithName:@"Bily" Nickname:@"Wily" Age:11 Email:@"bilywily@gmail.com" Phone:99889988 Password:@"2221"];
        
        [d ChooseLocation:@"Bahia"];
        
        [d ChooseRouteAddressFrom:@"Nova Iorque" AddressTo:@"Londres"];
    }
    return 0;
}
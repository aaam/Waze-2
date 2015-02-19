//
//  User.m
//  ObjC
//
//  Created by Francisco Ferreira on 2/13/15.
//  Copyright (c) 2015 CFerreira. All rights reserved.

#import "User.h"

@implementation User

-(void)RegisterWithName:(NSString *)uName
               Nickname:(NSString *)uNick
                    Age:(NSInteger)uAge
                  Email:(NSString *)uMail
                  Phone:(NSInteger) uPhone
               Password:(NSString *)uPass{

    _name = uName;
    _nick = uNick;
    _age = uAge;
    _mail = uMail;
    _phone = uPhone;
    _pass = uPass;
    
}

@end

//
//  User.h
//  ObjC
//
//  Created by Francisco Ferreira on 2/13/15.
//  Copyright (c) 2015 CFerreira. All rights reserved.

#import <Foundation/Foundation.h>

@interface User : NSObject
{    
}

@property (nonatomic) NSString * name;
@property (nonatomic) NSString * nick;
@property (nonatomic) NSInteger age;
@property (nonatomic) NSString * mail;
@property (nonatomic) NSInteger phone;
@property (nonatomic) NSString * pass;

-(void)RegisterWithName:(NSString *) uName
               Nickname:(NSString *) uNick
                    Age:(NSInteger) uAge
                  Email:(NSString *) uMail
                  Phone:(NSInteger) uPhone
               Password:(NSString *) uPass;

@end

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
#import "Social.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Device *d = [[Device alloc] init];
        User *u = [[User alloc] init];
        Social *s = [[Social alloc] init];
        
        char name[200], nick[200], mail[200], pass[200], address[200], addressTo[200], friend[200], message[200];
        NSString *sName, *sNick, *sMail, *sPass, *sAddress, *sAddressTo, *sFriend, *sMessage;
        NSInteger typed, age, phone;
        while (true) {
            NSLog(@"Please, choose an option:\n1- Register \n2- Choose a location \n3- Choose a route \n4- Find a friend \n5- Send message\n0- Exit\n\nType option number:");
            scanf("%ld", &typed);
            
            switch (typed) {
                case 1:
                    NSLog(@"Please, insert your information.");
                    NSLog(@"Name:");
                    scanf("%s", name);
                    sName = [NSString stringWithCString:name encoding:1];
                    
                    NSLog(@"Nickname:");
                    scanf("%s", nick);
                    sNick = [NSString stringWithCString:nick encoding:1];
                    
                    NSLog(@"Age:");
                    scanf("%ld", &age);
                    
                    NSLog(@"Email:");
                    scanf("%s", mail);
                    sMail = [NSString stringWithCString:mail encoding:1];
                    
                    NSLog(@"Phone:");
                    scanf("%ld", &phone);
                    
                    NSLog(@"Password:");
                    scanf("%s", pass);
                    sPass = [NSString stringWithCString:pass encoding:1];
                    
                    [u RegisterWithName:sName Nickname:sNick Age:age Email:sMail Phone:phone Password:sPass];
                    break;
                case 2:
                    NSLog(@"Address:");
                    scanf("%s", address);
                    sAddress = [NSString stringWithCString:address encoding:1];
                    [d ChooseLocation:sAddress];
                    break;
                case 3:
                    NSLog(@"Address From:");
                    scanf("%s", address);
                    sAddress = [NSString stringWithCString:address encoding:1];
                    
                    NSLog(@"Address To:");
                    scanf("%s", addressTo);
                    sAddressTo = [NSString stringWithCString:addressTo encoding:1];
                    [d ChooseRouteAddressFrom:sAddress AddressTo:sAddressTo];
                    break;
                case 4:
                    NSLog(@"Friend Name:");
                    scanf("%s", friend);
                    sFriend = [NSString stringWithCString:friend encoding:1];
                    if( [s FindFriend:sFriend]) {
                        NSLog(@"Friend was found!");
                    }
                    else
                        NSLog(@"Friend not found!");
                    break;
                case 5:
                    NSLog(@"Friend Name:");
                    scanf("%s", friend);
                    sFriend = [NSString stringWithCString:friend encoding:1];
                    
                    NSLog(@"Message:");
                    scanf("%s", message);
                    sMessage = [NSString stringWithCString:message encoding:1];
                    
                    if([s SendMessage:sMessage friendName:sFriend])
                        NSLog(@"Message sent!");
                    else
                        NSLog(@"Message not sent!");
                    break;
                case 0:
                    NSLog(@"Thanks for using the new amazing waze concept. :)");
                    return 0;
                    break;
                default:
                    return 0;
                    break;
            }
            NSLog(@"\n\n\n\n\n\n\n\n");
        }
    }
    return 0;
}
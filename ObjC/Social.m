//
//  Social.m
//  ObjC
//
//  Created by Francisco Ferreira on 2/13/15.
//  Copyright (c) 2015 CFerreira. All rights reserved.
//

#import "Social.h"

@implementation Social

-(BOOL)FindFriend:(NSString *) FriendName{
    
    NSArray *names = @[@"Francisco", @"Jonathan", @"Rafaela", @"Eduardo"];
    
    for(NSString* obj in names){
        if( obj == FriendName ){
            return YES;
        }
    }
    
    return NO;
}

-(NSInteger)SendMessage:(NSString *) Message
             friendName:(NSString *)FriendName{
    
    // CHECK IF MESSAGE IS EMPTY
    if( [Message isEqualToString:@""] )
        return NO;

    // CHECK IF FRIEND EXISTS AND SEND MESSAGE
    if( [self FindFriend: FriendName])
        return YES;
    else
        return NO;

}

@end

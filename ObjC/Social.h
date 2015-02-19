//
//  Social.h
//  ObjC
//
//  Created by Francisco Ferreira on 2/13/15.
//  Copyright (c) 2015 CFerreira. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Map.h"

@interface Social : NSObject
{
}

@property (nonatomic) NSString * fbAccount;

-(BOOL)FindFriend:(NSString *) FriendName;

-(NSInteger)SendMessage:(NSString *) Message
             friendName:(NSString *) FriendName;

@end
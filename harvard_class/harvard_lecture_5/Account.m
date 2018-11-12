//
//  Account.m
//  harvard_lecture_5
//
//  Created by John  Ito lee on 10/14/18.
//  Copyright © 2018 Johnito. All rights reserved.
//

#import "Account.h"


@implementation Account

@synthesize balance=_balance;

- (id)init{
    if(self = [super init]){
        self.balance = 0;
    }
    return self;
}


@end
